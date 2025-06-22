import 'package:flutter/material.dart';

/// A customizable stack of animated cards with vertical or horizontal scrolling.
class CollapsableCardStacker extends StatefulWidget {
  const CollapsableCardStacker({
    Key? key,
    required this.cards,
    this.initialPageIndex = 0,
    this.cardWidth = 300,
    this.cardHeight = 300,
    this.initialOffset = 40.0,
    this.spaceBetweenItems = 400,
    this.pageController,
    this.scrollDirection = Axis.vertical,
    this.onPageChanged,
    this.animationDuration = const Duration(milliseconds: 600),
  }) : super(key: key);

  /// List of card widgets to display.
  final List<Widget> cards;

  /// Starting index of the card to show.
  final int initialPageIndex;

  /// Width of each card.
  final double cardWidth;

  /// Height of each card.
  final double cardHeight;

  /// Offset used to vertically/horizontally stack the cards.
  final double initialOffset;

  /// Space between stacked items; affects parallax and visual offset.
  final double spaceBetweenItems;

  /// Scroll direction of the stack (vertical or horizontal).
  final Axis scrollDirection;

  /// Optional [PageController] to control or listen to scroll events externally.
  final PageController? pageController;

  /// Callback fired when the visible page index changes.
  final ValueChanged<int>? onPageChanged;

  /// Animation duration for navigating to the initial page.
  final Duration animationDuration;

  @override
  State<CollapsableCardStacker> createState() => _CollapsableCardStackerState();
}

class _CollapsableCardStackerState extends State<CollapsableCardStacker> {
  late final PageController _controller;
  double _pageValue = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = widget.pageController ?? PageController();

    // Animate to the initial page after a slight delay
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        _controller.animateToPage(
          widget.initialPageIndex,
          duration: widget.animationDuration,
          curve: Curves.easeInOut,
        );
      }
    });

    // Listen for page scrolls and update state
    _controller.addListener(() {
      if (mounted) {
        setState(() {
          _pageValue = _controller.page ?? 0.0;
        });
      }
    });
  }

  @override
  void dispose() {
    if (widget.pageController == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildStackedCards(),
        PageView.builder(
          scrollDirection: widget.scrollDirection,
          controller: _controller,
          itemCount: widget.cards.length,
          onPageChanged: widget.onPageChanged,
          itemBuilder: (_, __) => const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildStackedCards() {
    List<Widget> stackedCards = List.generate(widget.cards.length, (index) {
      double positionOffset = -widget.initialOffset;

      if (_pageValue < index) {
        positionOffset += (_pageValue - index) * widget.spaceBetweenItems;
      }

      return Positioned.fill(
        top: widget.scrollDirection == Axis.vertical ? -positionOffset : null,
        child: Align(
          alignment: Alignment.topCenter,
          child: Transform.scale(
            scale: 1.0,
            child: SizedBox(
              width: widget.cardWidth,
              height: widget.cardHeight,
              child: widget.cards[index],
            ),
          ),
        ),
      );
    });

    return Stack(
      fit: StackFit.expand,
      children: stackedCards,
    );
  }
}

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:async';

class AutoScrollHorizontalView extends StatefulWidget {
  const AutoScrollHorizontalView({super.key});

  @override
  _AutoScrollHorizontalViewState createState() =>
      _AutoScrollHorizontalViewState();
}

class _AutoScrollHorizontalViewState extends State<AutoScrollHorizontalView> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  final Duration _scrollDuration =
      const Duration(milliseconds: 500); // Durasi pergerakan scroll

  @override
  void initState() {
    super.initState();

    // Menjalankan scroll pertama kali setelah 1 detik
    _timer = Timer(const Duration(seconds: 1), () {
      _scroll();

      // Menjalankan scroll secara terus-menerus setiap 1 detik
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _scroll();
      });
    });
  }

  void _scroll() {
    // Memeriksa apakah scroll sudah mencapai akhir konten
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Jika sudah mencapai akhir konten, scroll kembali ke awal
      _scrollController.animateTo(
        0.0,
        duration: _scrollDuration,
        curve: Curves.ease,
      );
    } else {
      // Jika belum mencapai akhir konten, lanjutkan scroll ke posisi selanjutnya
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: _scrollDuration,
        curve: Curves.ease,
      );
    }
  }

  @override
  void dispose() {
    // Memastikan timer dihentikan ketika widget di dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      child: Row(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
            margin: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}

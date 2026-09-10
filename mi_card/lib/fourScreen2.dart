import 'package:flutter/material.dart';


class Fourscreen2 extends StatefulWidget {
  const Fourscreen2({super.key});

  @override
  State<Fourscreen2> createState() => _FourState();
}

class _FourState extends State<Fourscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            // ملاحظة: بدل ما نحط width ثابت 474 اللي بيعمل overflow
            // على أي شاشة أصغر، بنحدد أقصى عرض بس.
            constraints: const BoxConstraints(maxWidth: 474),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xffFFFFFF),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // صورة المنتج
                Stack(
                  alignment: Alignment.center, // كان AlignmentGeometry.center وده غلط
                  children: [
                    Container(
                      height: 190,
                      width: 224,
                      color: const Color(0xffF7F7F7),
                    ),
                    SizedBox(
                      height: 153.16,
                      width: 140,
                      child: Image.asset(
                        "assets/images/MX442 1.png",
                        // لو الصورة مش موجودة أو الاسم غلط، يظهر أيقونة
                        // بدل ما التطبيق يعرض الخطأ الأحمر اللي في الصورة
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.headphones,
                            size: 80,
                            color: Color(0xffBBBBBB),
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 8),

                // النص والتفاصيل
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Beats Studio Pro",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),

                      const Text(
                        "\$349.99",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // استخدمت Wrap بدل Row عشان لو الوسوم زادت
                      // عن عرض الكارت تنزل سطر جديد بدل ما تعمل overflow
                      Wrap(
                        spacing: 3,
                        runSpacing: 4,
                        children: [
                          Container(
                            height: 18,
                            decoration: BoxDecoration(
                              color: const Color(0xff666666),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 1,
                            ),
                            child: const Text(
                              "USB C",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            decoration: BoxDecoration(
                              color: const Color(0xff666666),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 1,
                            ),
                            child: const Text(
                              "Noise Cancelling",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            decoration: BoxDecoration(
                              color: const Color(0xff666666),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 1,
                            ),
                            child: const Text(
                              "Transparency Mode",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "High-fidelity lossless audio via USB-C\n\n"
                            "Active Noise Cancelling and Transparency mode\n\n"
                            "Up to 40 hours of listening time",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(height: 8),

                      // استخدمت Wrap هنا كمان عشان الأزرار
                      // ميعملوش overflow لو المساحة ضاقت
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(108, 32),
                              backgroundColor: const Color(0xff000000),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text(
                              "Add to cart",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(108, 32),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: const BorderSide(color: Color(0xff212121)),
                              ),
                            ),
                            child: const Text(
                              "View Details",
                              style: TextStyle(
                                color: Color(0xff212121),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
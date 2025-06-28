import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prize/core/utils/helper/spacing.dart';
import 'package:prize/core/utils/resources/app_text_styles.dart';
import 'package:prize/core/utils/resources/app_widget_color.dart';
import 'package:prize/features/home/data/models/category_model.dart';
import 'package:prize/features/home/view/widgets/categories/single_dot_page_indicator.dart';

class AllCategoriseSectionWidget extends StatefulWidget {
  const AllCategoriseSectionWidget({super.key});

  @override
  State<AllCategoriseSectionWidget> createState() =>
      _AllCategoriseSectionWidgetState();
}

class _AllCategoriseSectionWidgetState
    extends State<AllCategoriseSectionWidget> {
  final PageController _pageController = PageController();
 int _currentPage = 0;

  final List<CategoryModel> _allCategories = [
    CategoryModel(
        title: 'Kids fashion',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Men\'s fashion',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Women\'s fashion',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Home & Kitchen',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Appliances',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Mobiles',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Video games',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
      title: 'Televisions',
      imagePath:
          "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C",
    ),
    CategoryModel(
        title: 'Headphones',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
    CategoryModel(
        title: 'Cameras',
        imagePath:
            "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-1/484433372_611971701821074_6534602678444115531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d2534&_nc_ohc=M8AHQ14Khf0Q7kNvwHnm5xH&_nc_oc=AdliMK6KO7LpRjYsbNg1xGWPtEKyjnsIomO5WW9vpcU_NwUPLImNYdt8Ot34jf8aWuY&_nc_zt=24&_nc_ht=scontent.fcai19-11.fna&_nc_gid=P5vZBcXVWB50UOvyUSgxnQ&oh=00_AfPLs-RaVsV7cmhTBUI0asM62K4l4JBgajYUyBZDdoDt0A&oe=6864B99C"),
  ];

  List<List<CategoryModel>> get _pages {
    const int itemsPerPage = 8;
    List<List<CategoryModel>> result = [];
    for (int i = 0; i < _allCategories.length; i += itemsPerPage) {
      result.add(_allCategories.sublist(
        i,
        i + itemsPerPage > _allCategories.length
            ? _allCategories.length
            : i + itemsPerPage,
      ));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 230.h,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemCount: _pages.length,
            itemBuilder: (_, pageIndex) {
              final items = _pages[pageIndex];
              return GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: .6.h,
                ),
                itemBuilder: (context, index) {
                  final category = items[index];
                  return Column(
                    children: [
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            color: AppWidgetColor.fillWidgetColor(context),
                            borderRadius: BorderRadius.circular(16.r),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(category.imagePath))),
                      ),
                      verticalSpace(8),
                      Text(
                        category.title,
                        style:
                            AppTextStyles.smallHeadTitle22w400TextStyle(context)
                                .copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
        verticalSpace(8),
        SingleDotPageIndicator(
          controller: _pageController,
          pageCount: _pages.length,
        ),
      ],
    );
  }
}

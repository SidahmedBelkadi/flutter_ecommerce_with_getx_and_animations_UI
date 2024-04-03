import 'package:ecommmerce/features/administration/screens/categories/widgets/update_category_name_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/bottom_sheet.helper.dart';
import '../../../../../utils/helpers/dialog.helper.dart';
import 'category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) => Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) => AppBottomSheet.customFormBottomSheet(
                  context: context, form: const UpdateCategoryForm()),
              backgroundColor: Colors.green.withOpacity(.8),
              label: "Update",
              icon: Icons.edit_document,
            ),
            SlidableAction(
              onPressed: (context) => AppDialog.customDeleteDialog(
                onConfirm: () {},
                title: AppTexts.deleteOrderTitle,
                content: AppTexts.deleteCategoryContent,
              ),
              backgroundColor: Colors.red.withOpacity(.8),
              label: "Delete",
              icon: Icons.delete,
            )
          ],
        ),
        child: const Category(
          image: AppImages.laptop,
          title: "Shoes",
        ),
      ),
    );
  }
}

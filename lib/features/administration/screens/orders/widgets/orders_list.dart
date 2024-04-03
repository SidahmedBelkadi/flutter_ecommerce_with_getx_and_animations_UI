import 'package:ecommmerce/features/administration/screens/orders/widgets/update_category_status_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/bottom_sheet.helper.dart';
import '../../../../../utils/helpers/dialog.helper.dart';
import '../../../../shop/screens/orders/widgets/order_item.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) => Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => AppBottomSheet.customFormBottomSheet(
                    context: context, form: UpdateOrderStatusForm()),
                backgroundColor: Colors.green.withOpacity(.8),
                label: "Update",
                icon: Icons.edit_document,
              ),
              SlidableAction(
                onPressed: (context) => AppDialog.customDeleteDialog(
                  onConfirm: () {},
                  title: AppTexts.deleteOrderTitle,
                  content: AppTexts.deleteOrderContent,
                ),
                backgroundColor: Colors.red.withOpacity(.8),
                label: "Delete",
                icon: Icons.delete,
              )
            ],
          ),
          child: const OrderItem(
            title: "Apple Macbook Air M2 2023",
            status: 'Pending',
            orderDate: "14, Avril 2023",
            shippingDate: "14, Avril 2023",
          ),
        ),
      ),
    );
  }
}

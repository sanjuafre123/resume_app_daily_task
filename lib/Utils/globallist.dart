import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List titlename = [
  'All inboxes',
  'inbox',
  'Starred',
  'Snoozed',
  'important',
  'Sent',
  'Drafts',
  'All Mail',
  'Spam',
  'Trash',
  'Create new',
  'Setting',
];

List iconname = [
  Icons.all_inbox,
  Icons.inbox,
  Icons.star_border,
  Icons.snooze,
  Icons.label_important_outline,
  Icons.send,
  Icons.drafts,
  Icons.mail_outline,
  Icons.error_outline,
  Icons.delete_sweep_rounded,
  Icons.add,
  Icons.settings,
];

String gender = 'Male';

List<bool> hobby = [
  false,
  false,
  false,
  false,
];

List hobbyname = [
  'Cricket',
  'Chess',
  'Footboll',
  'Reading',
];

String firstName = '';
String lastName = '';
String phoneNumber = '';
String dub = '';
List selectedindex = [];

TextEditingController txtController = TextEditingController();

List<TextEditingController> text = [
  txtController,
];

List<InvoiceModel> invoiceList = [
  InvoiceModel(name: 'ASUS',price: '49,999/-',category: 'Laptop'),
  InvoiceModel(name: 'HP',price: '39,999/-',category: 'Laptop'),
  InvoiceModel(name: 'Lenovo',price: '50,999/-',category: 'Laptop'),
];

class InvoiceModel
{
  String? name;
  String? price;
  String? category;

  InvoiceModel({this.name, this.price,this.category});
}
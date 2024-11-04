import '../../../../../all_utils.dart';

class SearchTextField extends StatefulWidget {
  final Function(String) onSearch;
  final String? initialValue;

  const SearchTextField({
    super.key,
    required this.onSearch,
    this.initialValue,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: widget.onSearch,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.textSecondary,
          size: 24.0,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: AppColors.textSecondary,
        ),
        errorMaxLines: 2,
        fillColor: AppColors.white,
        filled: true,
        labelStyle: const TextStyle(
          fontSize: AppSizes.fontSizeSm,
          color: AppColors.textPrimary,
        ),
        errorStyle: const TextStyle(
          fontSize: AppSizes.fontSizeSm,
          color: AppColors.red,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: const BorderSide(
            width: AppSizes.inputFieldBorderWidth,
            color: AppColors.redLight,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: const BorderSide(
            width: AppSizes.inputFieldBorderWidth,
            color: AppColors.red,
          ),
        ),
      ),
    );
  }
}

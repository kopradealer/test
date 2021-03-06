part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    BlocAction? action,
    TweetModel? selectedTweet,
    @Default(<TweetModel>[]) List<TweetModel> tweets,
  }) = _HomeState;

  List<String> get emojis =>
      'π π π π π π π π€£ π₯² βΊοΈ π π π π π π π π₯° π π π π π π π π '
              'π€ͺ π€¨ π€ π§‘ π π π π π€ π€'
          .split(' ');

  int get tweetsWEmojiCount {
    int count = 0;

    for (final TweetModel element in tweets) {
      if (element.hasEmoji) {
        count += 1;
      }
    }

    return count;
  }
}

class ShowEmojiBottomSheet extends BlocAction {}

class ShowLoader extends BlocAction {}

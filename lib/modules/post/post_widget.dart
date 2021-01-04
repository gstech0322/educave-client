import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/helpers/date_time_format.dart';
import '../../core/theme/theme.dart';
import '../../data/providers/api_provider.dart';
import '../account/account_provider.dart';
import '../comments/account_data_dto.dart';
import '../comments/comments_model.dart';
import '../comments/comments_repository.dart';
import '../comments/comments_vm.dart';
import '../comments/widgets/comments.dart';
import 'features/feature_widget_factory.dart';
import 'features/post_feature.dart';
import 'post_vm.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<PostViewModel>(context);
    final account = Provider.of<AccountProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 17.0, right: 17.0, top: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(vm.profilePic),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vm.username),
                    Text(
                      vm.postedIn,
                      style: const TextStyle(color: AppColors.muted),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_vert,
                    color: AppColors.muted,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
                children: vm.features.map((PostFeature feature) {
              return FeatureWidgetFactory(feature);
            }).toList()),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              DateTimeFormat.monthDayYear.format(vm.dateTime).toString(),
              style: const TextStyle(color: AppColors.muted),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5, top: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: vm.liked ? vm.unlike : vm.like,
                      splashRadius: 1,
                      iconSize: 23,
                      icon: vm.liked
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_outline),
                    ),
                    const SizedBox(width: 11),
                    SizedBox(
                      width: 27,
                      child: Text(
                        vm.likeCount.toString(),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        showModalBottomSheet<void>(
                          isScrollControlled: true,
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          builder: (BuildContext context) {
                            return FractionallySizedBox(
                              heightFactor: 0.8,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).padding.bottom,
                                ),
                                child: ChangeNotifierProvider(
                                  create: (_) => CommentsViewModel(
                                    CommentsModel(
                                      CommentsRepository(ApiProvider(), vm.id),
                                    ),
                                    accountCommentData: AccountCommentDataDto(
                                      account.id,
                                      account.profilePic,
                                      account.name,
                                    ),
                                  ),
                                  child: const Comments(),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      iconSize: 23,
                      splashRadius: 1,
                      icon: const Icon(Icons.chat_bubble_outline),
                    ),
                    const SizedBox(width: 11),
                    SizedBox(
                      width: 27,
                      child: Text(
                        vm.commentCount.toString(),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      splashRadius: 1,
                      iconSize: 25,
                      icon: const Icon(Icons.airplane_ticket_outlined),
                    ),
                  ],
                ),
                IconButton(
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  onPressed: vm.saved ? vm.unsave : vm.save,
                  splashRadius: 1,
                  iconSize: 25,
                  icon: Icon(
                    vm.saved ? Icons.bookmark : Icons.bookmark_outline_outlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

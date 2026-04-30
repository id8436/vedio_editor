package com.twitter.sdk.android.core.services;

import android.support.v4.app.NotificationCompat;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import f.b.c;
import f.b.e;
import f.b.f;
import f.b.o;
import f.b.s;
import f.b.t;
import f.g;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface StatusesService {
    @o(a = "/1.1/statuses/destroy/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    g<com.twitter.sdk.android.core.a.o> destroy(@s(a = "id") Long l, @c(a = "trim_user") Boolean bool);

    @f(a = "/1.1/statuses/home_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<List<com.twitter.sdk.android.core.a.o>> homeTimeline(@t(a = "count") Integer num, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "trim_user") Boolean bool, @t(a = "exclude_replies") Boolean bool2, @t(a = "contributor_details") Boolean bool3, @t(a = "include_entities") Boolean bool4);

    @f(a = "/1.1/statuses/lookup.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<List<com.twitter.sdk.android.core.a.o>> lookup(@t(a = "id") String str, @t(a = "include_entities") Boolean bool, @t(a = "trim_user") Boolean bool2, @t(a = "map") Boolean bool3);

    @f(a = "/1.1/statuses/mentions_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<List<com.twitter.sdk.android.core.a.o>> mentionsTimeline(@t(a = "count") Integer num, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "trim_user") Boolean bool, @t(a = "contributor_details") Boolean bool2, @t(a = "include_entities") Boolean bool3);

    @o(a = "/1.1/statuses/retweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    g<com.twitter.sdk.android.core.a.o> retweet(@s(a = "id") Long l, @c(a = "trim_user") Boolean bool);

    @f(a = "/1.1/statuses/retweets_of_me.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<List<com.twitter.sdk.android.core.a.o>> retweetsOfMe(@t(a = "count") Integer num, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "trim_user") Boolean bool, @t(a = "include_entities") Boolean bool2, @t(a = "include_user_entities") Boolean bool3);

    @f(a = "/1.1/statuses/show.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<com.twitter.sdk.android.core.a.o> show(@t(a = "id") Long l, @t(a = "trim_user") Boolean bool, @t(a = "include_my_retweet") Boolean bool2, @t(a = "include_entities") Boolean bool3);

    @o(a = "/1.1/statuses/unretweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    g<com.twitter.sdk.android.core.a.o> unretweet(@s(a = "id") Long l, @c(a = "trim_user") Boolean bool);

    @o(a = "/1.1/statuses/update.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    g<com.twitter.sdk.android.core.a.o> update(@c(a = NotificationCompat.CATEGORY_STATUS) String str, @c(a = "in_reply_to_status_id") Long l, @c(a = "possibly_sensitive") Boolean bool, @c(a = "lat") Double d2, @c(a = "long") Double d3, @c(a = "place_id") String str2, @c(a = "display_coordinates") Boolean bool2, @c(a = "trim_user") Boolean bool3, @c(a = "media_ids") String str3);

    @f(a = "/1.1/statuses/user_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<List<com.twitter.sdk.android.core.a.o>> userTimeline(@t(a = BehanceSDKUrlUtil.KEY_USER_ID) Long l, @t(a = "screen_name") String str, @t(a = "count") Integer num, @t(a = "since_id") Long l2, @t(a = "max_id") Long l3, @t(a = "trim_user") Boolean bool, @t(a = "exclude_replies") Boolean bool2, @t(a = "contributor_details") Boolean bool3, @t(a = "include_rts") Boolean bool4);
}

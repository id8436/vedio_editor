package com.twitter.sdk.android.core.services;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import f.b.c;
import f.b.e;
import f.b.f;
import f.b.o;
import f.b.t;
import f.g;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface FavoriteService {
    @o(a = "/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    g<com.twitter.sdk.android.core.a.o> create(@c(a = "id") Long l, @c(a = "include_entities") Boolean bool);

    @o(a = "/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    g<com.twitter.sdk.android.core.a.o> destroy(@c(a = "id") Long l, @c(a = "include_entities") Boolean bool);

    @f(a = "/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    g<List<com.twitter.sdk.android.core.a.o>> list(@t(a = BehanceSDKUrlUtil.KEY_USER_ID) Long l, @t(a = "screen_name") String str, @t(a = "count") Integer num, @t(a = "since_id") String str2, @t(a = "max_id") String str3, @t(a = "include_entities") Boolean bool);
}

.class public Lorg/mortbay/util/MultiMap;
.super Ljava/util/HashMap;
.source "MultiMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 57
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    invoke-virtual {p0, p1}, Lorg/mortbay/util/MultiMap;->putAll(Ljava/util/Map;)V

    .line 59
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-static {v0, p2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    if-eq v0, v1, :cond_0

    .line 191
    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-void
.end method

.method public addValues(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    invoke-static {v0, p2}, Lorg/mortbay/util/LazyList;->addCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    if-eq v0, v1, :cond_0

    .line 206
    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    return-void
.end method

.method public addValues(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->addCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    if-eq v0, v1, :cond_0

    .line 221
    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 290
    invoke-super {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/MultiMap;

    .line 292
    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 293
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/util/LazyList;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 299
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 108
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    monitor-enter v3

    move v0, v1

    .line 111
    :goto_0
    :try_start_0
    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 113
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 117
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 106
    if-nez v1, :cond_2

    .line 121
    :goto_1
    :pswitch_1
    return-object v0

    .line 106
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-nez p2, :cond_0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    instance-of v2, p1, Lorg/mortbay/util/MultiMap;

    .line 254
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/mortbay/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method public putValues(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putValues(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 174
    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/mortbay/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 232
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    .line 235
    if-lez v1, :cond_0

    .line 237
    invoke-static {v0, p2}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    if-nez v0, :cond_1

    .line 239
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 241
    :cond_1
    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toStringArrayMap()Ljava/util/Map;
    .locals 4

    .prologue
    .line 271
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 273
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 278
    invoke-static {v3}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
    :cond_0
    return-object v1
.end method

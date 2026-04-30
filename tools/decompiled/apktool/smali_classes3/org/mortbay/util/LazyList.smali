.class public Lorg/mortbay/util/LazyList;
.super Ljava/lang/Object;
.source "LazyList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final __EMTPY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/LazyList;->__EMTPY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    if-nez p0, :cond_2

    .line 104
    if-gtz p1, :cond_0

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p2, p0

    .line 122
    :cond_1
    :goto_0
    return-object p2

    .line 113
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 115
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p2, p0

    .line 116
    goto :goto_0

    .line 119
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p2, v0

    .line 122
    goto :goto_0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    if-nez p0, :cond_2

    .line 71
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    .line 90
    :cond_1
    :goto_0
    return-object p1

    .line 81
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 83
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 90
    goto :goto_0
.end method

.method public static addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 148
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-object p0
.end method

.method public static addCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 136
    :cond_0
    return-object p0
.end method

.method public static addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    if-nez p0, :cond_1

    .line 408
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 410
    :cond_0
    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 411
    aput-object p1, v0, v2

    .line 420
    :goto_0
    return-object v0

    .line 416
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 417
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 418
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length v1, p0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public static array2List([Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    .line 392
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    if-nez p0, :cond_1

    .line 349
    const/4 p0, 0x0

    .line 352
    :cond_0
    :goto_0
    return-object p0

    .line 350
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 338
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 339
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    if-nez p0, :cond_1

    .line 159
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 160
    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 162
    check-cast p0, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p0, v0

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    .line 171
    goto :goto_0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 323
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 324
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 327
    :cond_1
    return-object p0

    .line 326
    :cond_2
    if-eqz p1, :cond_1

    .line 329
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static getList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getList(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 2

    .prologue
    .line 240
    if-nez p0, :cond_1

    .line 241
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 241
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 242
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 243
    check-cast p0, Ljava/util/List;

    move-object v0, p0

    goto :goto_0

    .line 245
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 369
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    .line 370
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 371
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {p0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public static listIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 381
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    if-nez p0, :cond_1

    move-object p0, v1

    .line 211
    :cond_0
    :goto_0
    return-object p0

    .line 200
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 202
    check-cast v0, Ljava/util/List;

    .line 203
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object p0, v1

    .line 205
    goto :goto_0

    .line 209
    :cond_2
    if-nez p1, :cond_0

    move-object p0, v1

    .line 210
    goto :goto_0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    if-nez p0, :cond_1

    move-object p0, v1

    .line 191
    :cond_0
    :goto_0
    return-object p0

    .line 180
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 182
    check-cast v0, Ljava/util/List;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object p0, v1

    .line 185
    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 190
    goto :goto_0
.end method

.method public static removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 427
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object p0

    .line 429
    :cond_1
    array-length v0, p0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 431
    aget-object v0, p0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    if-nez p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 434
    :goto_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 435
    if-lez v1, :cond_2

    .line 436
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    :cond_2
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 438
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object p0, v0

    .line 439
    goto :goto_0

    .line 433
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 307
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 308
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    if-nez p0, :cond_0

    .line 277
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 295
    :goto_0
    return-object v0

    .line 279
    :cond_0
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 281
    check-cast p0, Ljava/util/List;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 285
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 286
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 287
    goto :goto_0

    .line 289
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_3
    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 294
    invoke-static {v1, v0, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v0, v1

    .line 295
    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const-string/jumbo v0, "[]"

    .line 362
    :goto_0
    return-object v0

    .line 360
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 361
    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    if-nez p0, :cond_1

    .line 255
    sget-object v0, Lorg/mortbay/util/LazyList;->__EMTPY_STRING_ARRAY:[Ljava/lang/String;

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 259
    check-cast p0, Ljava/util/List;

    .line 260
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 261
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 263
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_2
    move v1, v2

    .line 266
    goto :goto_1

    .line 270
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

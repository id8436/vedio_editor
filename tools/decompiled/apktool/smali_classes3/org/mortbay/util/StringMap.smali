.class public Lorg/mortbay/util/StringMap;
.super Ljava/util/AbstractMap;
.source "StringMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final CASE_INSENSTIVE:Z = true

.field protected static final __HASH_WIDTH:I = 0x11


# instance fields
.field protected _entrySet:Ljava/util/HashSet;

.field protected _ignoreCase:Z

.field protected _nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

.field protected _nullValue:Ljava/lang/Object;

.field protected _root:Lorg/mortbay/util/StringMap$Node;

.field protected _umEntrySet:Ljava/util/Set;

.field protected _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 45
    const/16 v0, 0x11

    iput v0, p0, Lorg/mortbay/util/StringMap;->_width:I

    .line 46
    new-instance v0, Lorg/mortbay/util/StringMap$Node;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap$Node;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    .line 48
    iput-object v1, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 49
    iput-object v1, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    .line 51
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/StringMap;->_umEntrySet:Ljava/util/Set;

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mortbay/util/StringMap;-><init>()V

    .line 66
    iput-boolean p1, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    .line 67
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/mortbay/util/StringMap;-><init>()V

    .line 78
    iput-boolean p1, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    .line 79
    iput p2, p0, Lorg/mortbay/util/StringMap;->_width:I

    .line 80
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    new-instance v0, Lorg/mortbay/util/StringMap$Node;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap$Node;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    .line 534
    iput-object v1, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 535
    iput-object v1, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 537
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    if-nez p1, :cond_2

    .line 525
    iget-object v2, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    if-eqz v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {p0, v3, v1, v2}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_umEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 241
    :goto_0
    return-object v0

    .line 239
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 253
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 251
    if-nez v0, :cond_1

    .line 252
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getBestEntry([BII)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 379
    if-nez p1, :cond_1

    .line 380
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 382
    :cond_1
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    move v5, v3

    move v4, v1

    .line 387
    :goto_1
    if-ge v5, p3, :cond_9

    .line 389
    add-int v6, p2, v5

    aget-byte v6, p1, v6

    int-to-char v6, v6

    .line 392
    if-ne v4, v1, :cond_b

    .line 396
    iget-object v4, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-nez v4, :cond_5

    move-object v4, v2

    .line 398
    :goto_2
    if-nez v4, :cond_2

    if-gtz v5, :cond_0

    :cond_2
    move v0, v3

    .line 404
    :goto_3
    if-eqz v4, :cond_8

    .line 407
    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v7, v7, v0

    if-eq v7, v6, :cond_3

    iget-boolean v7, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    if-eqz v7, :cond_6

    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v7, v7, v0

    if-ne v7, v6, :cond_6

    .line 409
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 410
    iget-object v6, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v6, v6

    if-ne v0, v6, :cond_4

    move v0, v1

    .line 387
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v8, v0

    move-object v0, v4

    move v4, v8

    goto :goto_1

    .line 396
    :cond_5
    iget-object v4, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget v7, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int v7, v6, v7

    aget-object v4, v4, v7

    goto :goto_2

    .line 416
    :cond_6
    if-lez v0, :cond_7

    move-object v0, v2

    goto :goto_0

    .line 419
    :cond_7
    iget-object v4, v4, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    goto :goto_3

    :cond_8
    move-object v0, v2

    .line 421
    goto :goto_0

    .line 424
    :cond_9
    if-lez v4, :cond_a

    move-object v0, v2

    goto :goto_0

    .line 425
    :cond_a
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 426
    goto :goto_0

    :cond_b
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_3
.end method

.method public getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 267
    iget-object v1, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 309
    :cond_0
    :goto_0
    return-object v1

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    move v5, v3

    move v4, v2

    .line 274
    :goto_1
    if-ge v5, p3, :cond_6

    .line 276
    add-int v6, p2, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 279
    if-ne v4, v2, :cond_8

    .line 282
    iget-object v4, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-nez v4, :cond_4

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move v0, v3

    .line 286
    :goto_3
    if-eqz v4, :cond_0

    .line 289
    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v7, v7, v0

    if-eq v7, v6, :cond_2

    iget-boolean v7, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    if-eqz v7, :cond_5

    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v7, v7, v0

    if-ne v7, v6, :cond_5

    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 292
    iget-object v6, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v6, v6

    if-ne v0, v6, :cond_3

    move v0, v2

    .line 274
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v8, v0

    move-object v0, v4

    move v4, v8

    goto :goto_1

    .line 282
    :cond_4
    iget-object v0, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget v4, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int v4, v6, v4

    aget-object v0, v0, v4

    goto :goto_2

    .line 298
    :cond_5
    if-gtz v0, :cond_0

    .line 301
    iget-object v4, v4, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    goto :goto_3

    .line 306
    :cond_6
    if-gtz v4, :cond_0

    .line 307
    if-eqz v0, :cond_7

    iget-object v2, v0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_7
    move-object v1, v0

    .line 309
    goto :goto_0

    :cond_8
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_3
.end method

.method public getEntry([CII)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 322
    if-nez p1, :cond_1

    .line 323
    iget-object v1, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 365
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    move v5, v3

    move v4, v2

    .line 330
    :goto_1
    if-ge v5, p3, :cond_6

    .line 332
    add-int v6, p2, v5

    aget-char v6, p1, v6

    .line 335
    if-ne v4, v2, :cond_8

    .line 338
    iget-object v4, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-nez v4, :cond_4

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move v0, v3

    .line 342
    :goto_3
    if-eqz v4, :cond_0

    .line 345
    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v7, v7, v0

    if-eq v7, v6, :cond_2

    iget-boolean v7, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    if-eqz v7, :cond_5

    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v7, v7, v0

    if-ne v7, v6, :cond_5

    .line 347
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 348
    iget-object v6, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v6, v6

    if-ne v0, v6, :cond_3

    move v0, v2

    .line 330
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v8, v0

    move-object v0, v4

    move v4, v8

    goto :goto_1

    .line 338
    :cond_4
    iget-object v0, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget v4, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int v4, v6, v4

    aget-object v0, v0, v4

    goto :goto_2

    .line 354
    :cond_5
    if-gtz v0, :cond_0

    .line 357
    iget-object v4, v4, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    goto :goto_3

    .line 362
    :cond_6
    if-gtz v4, :cond_0

    .line 363
    if-eqz v0, :cond_7

    iget-object v2, v0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_7
    move-object v1, v0

    .line 365
    goto :goto_0

    :cond_8
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_3
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/mortbay/util/StringMap;->_width:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIgnoreCase()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 126
    if-nez p1, :cond_2

    .line 128
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 129
    iput-object p2, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Lorg/mortbay/util/StringMap$NullEntry;

    invoke-direct {v2, p0, v1}, Lorg/mortbay/util/StringMap$NullEntry;-><init>(Lorg/mortbay/util/StringMap;Lorg/mortbay/util/StringMap$1;)V

    iput-object v2, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 133
    iget-object v1, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    .line 231
    :cond_1
    :goto_0
    return-object v1

    .line 138
    :cond_2
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    move v2, v5

    move-object v3, v1

    move v6, v4

    move-object v7, v0

    move-object v0, v1

    .line 145
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 150
    if-ne v6, v4, :cond_10

    .line 155
    iget-object v0, v7, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    move-object v6, v7

    move-object v3, v1

    move v8, v5

    move-object v7, v0

    .line 159
    :goto_3
    if-eqz v7, :cond_7

    .line 162
    iget-object v0, v7, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v0, v0, v8

    if-eq v0, v9, :cond_3

    iget-boolean v0, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v0, v0, v8

    if-ne v0, v9, :cond_5

    .line 165
    :cond_3
    add-int/lit8 v0, v8, 0x1

    .line 166
    iget-object v3, v7, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v3, v3

    if-ne v0, v3, :cond_11

    move v0, v2

    move v3, v4

    move-object v2, v1

    .line 145
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v10, v0

    move-object v0, v6

    move v6, v3

    move-object v3, v2

    move v2, v10

    goto :goto_1

    .line 155
    :cond_4
    iget-object v0, v7, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget v3, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int v3, v9, v3

    aget-object v0, v0, v3

    goto :goto_2

    .line 173
    :cond_5
    if-nez v8, :cond_6

    .line 177
    iget-object v0, v7, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    move-object v3, v7

    move-object v7, v0

    goto :goto_3

    .line 182
    :cond_6
    invoke-virtual {v7, p0, v8}, Lorg/mortbay/util/StringMap$Node;->split(Lorg/mortbay/util/StringMap;I)Lorg/mortbay/util/StringMap$Node;

    .line 183
    add-int/lit8 v0, v2, -0x1

    move-object v2, v3

    move v3, v4

    .line 185
    goto :goto_4

    .line 190
    :cond_7
    new-instance v7, Lorg/mortbay/util/StringMap$Node;

    iget-boolean v0, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    invoke-direct {v7, v0, p1, v2}, Lorg/mortbay/util/StringMap$Node;-><init>(ZLjava/lang/String;I)V

    .line 192
    if-eqz v3, :cond_a

    .line 193
    iput-object v7, v3, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    move v6, v8

    .line 219
    :cond_8
    :goto_5
    if-eqz v7, :cond_1

    .line 222
    if-lez v6, :cond_9

    .line 223
    invoke-virtual {v7, p0, v6}, Lorg/mortbay/util/StringMap$Node;->split(Lorg/mortbay/util/StringMap;I)Lorg/mortbay/util/StringMap$Node;

    .line 225
    :cond_9
    iget-object v1, v7, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 226
    iput-object p1, v7, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 227
    iput-object p2, v7, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_a
    if-eqz v6, :cond_f

    .line 196
    iget-object v0, v6, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-nez v0, :cond_b

    .line 197
    iget v0, p0, Lorg/mortbay/util/StringMap;->_width:I

    new-array v0, v0, [Lorg/mortbay/util/StringMap$Node;

    iput-object v0, v6, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    .line 198
    :cond_b
    iget-object v0, v6, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget v2, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int v2, v9, v2

    aput-object v7, v0, v2

    .line 199
    iget-object v0, v7, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v0, v0, v5

    iget v2, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int/2addr v0, v2

    .line 200
    iget-object v2, v7, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    if-eqz v2, :cond_c

    iget-object v2, v7, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v2, v2, v5

    iget v3, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int/2addr v2, v3

    if-eq v2, v0, :cond_c

    .line 202
    iget-object v2, v6, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    .line 203
    iget-object v2, v6, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    aput-object v7, v2, v0

    :cond_c
    :goto_6
    move v6, v8

    .line 212
    goto :goto_5

    .line 206
    :cond_d
    iget-object v2, v6, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    aget-object v0, v2, v0

    .line 207
    :goto_7
    iget-object v2, v0, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    if-eqz v2, :cond_e

    .line 208
    iget-object v0, v0, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    goto :goto_7

    .line 209
    :cond_e
    iput-object v7, v0, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    goto :goto_6

    .line 214
    :cond_f
    iput-object v7, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    move v6, v8

    .line 215
    goto :goto_5

    :cond_10
    move v8, v6

    move-object v6, v0

    goto/16 :goto_3

    :cond_11
    move v3, v0

    move v0, v2

    move-object v2, v1

    goto/16 :goto_4
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 682
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 683
    invoke-virtual {p0, v1}, Lorg/mortbay/util/StringMap;->setIgnoreCase(Z)V

    .line 684
    invoke-virtual {p0, v0}, Lorg/mortbay/util/StringMap;->putAll(Ljava/util/Map;)V

    .line 685
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 442
    if-nez p1, :cond_2

    .line 444
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 448
    iput-object v5, p0, Lorg/mortbay/util/StringMap;->_nullEntry:Lorg/mortbay/util/StringMap$NullEntry;

    .line 449
    iput-object v5, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    :cond_0
    move-object v5, v0

    .line 500
    :cond_1
    :goto_0
    return-object v5

    .line 454
    :cond_2
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    move v2, v3

    move-object v4, v0

    move v0, v1

    .line 459
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 464
    if-ne v2, v3, :cond_3

    .line 467
    iget-object v2, v4, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-nez v2, :cond_6

    move-object v2, v5

    :goto_2
    move-object v4, v2

    move v2, v1

    .line 471
    :cond_3
    :goto_3
    if-eqz v4, :cond_1

    .line 474
    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v7, v7, v2

    if-eq v7, v6, :cond_4

    iget-boolean v7, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    if-eqz v7, :cond_7

    iget-object v7, v4, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v7, v7, v2

    if-ne v7, v6, :cond_7

    .line 476
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 477
    iget-object v6, v4, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v6, v6

    if-ne v2, v6, :cond_5

    move v2, v3

    .line 459
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_6
    iget-object v2, v4, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget v4, p0, Lorg/mortbay/util/StringMap;->_width:I

    rem-int v4, v6, v4

    aget-object v2, v2, v4

    goto :goto_2

    .line 483
    :cond_7
    if-gtz v2, :cond_1

    .line 486
    iget-object v4, v4, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    goto :goto_3

    .line 491
    :cond_8
    if-gtz v2, :cond_1

    .line 492
    if-eqz v4, :cond_9

    iget-object v0, v4, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 495
    :cond_9
    iget-object v0, v4, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 497
    iput-object v5, v4, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 498
    iput-object v5, v4, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    move-object v5, v0

    .line 500
    goto :goto_0
.end method

.method public setIgnoreCase(Z)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_root:Lorg/mortbay/util/StringMap$Node;

    iget-object v0, v0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be set before first put"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-boolean p1, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    .line 91
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lorg/mortbay/util/StringMap;->_width:I

    .line 107
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 673
    iget-boolean v1, p0, Lorg/mortbay/util/StringMap;->_ignoreCase:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 674
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 675
    return-void
.end method

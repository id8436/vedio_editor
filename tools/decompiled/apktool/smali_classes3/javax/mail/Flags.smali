.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANSWERED_BIT:I = 0x1

.field private static final DELETED_BIT:I = 0x2

.field private static final DRAFT_BIT:I = 0x4

.field private static final FLAGGED_BIT:I = 0x8

.field private static final RECENT_BIT:I = 0x10

.field private static final SEEN_BIT:I = 0x20

.field private static final USER_BIT:I = -0x80000000

.field private static final serialVersionUID:J = 0x56a5b06539097bc4L


# instance fields
.field private system_flags:I

.field private user_flags:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 202
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 203
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 193
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 194
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 182
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 183
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 223
    :cond_0
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public add(Ljavax/mail/Flags$Flag;)V
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 213
    return-void
.end method

.method public add(Ljavax/mail/Flags;)V
    .locals 4

    .prologue
    .line 233
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 235
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 239
    :cond_0
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 241
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0, p0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public contains(Ljavax/mail/Flags$Flag;)Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljavax/mail/Flags;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 316
    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    iget v2, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v1, v2

    iget v2, p1, Ljavax/mail/Flags;->system_flags:I

    if-eq v1, v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 325
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 332
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    instance-of v2, p1, Ljavax/mail/Flags;

    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    check-cast p1, Ljavax/mail/Flags;

    .line 347
    iget v2, p1, Ljavax/mail/Flags;->system_flags:I

    iget v3, p0, Ljavax/mail/Flags;->system_flags:I

    if-ne v2, v3, :cond_0

    .line 351
    iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    move v0, v1

    .line 352
    goto :goto_0

    .line 353
    :cond_2
    iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 355
    iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 357
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 358
    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_4
    move v0, v1

    .line 361
    goto :goto_0
.end method

.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 390
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 391
    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 392
    :cond_0
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 393
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 394
    :cond_1
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 395
    sget-object v1, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 396
    :cond_2
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 397
    sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 398
    :cond_3
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 399
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 400
    :cond_4
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 401
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 402
    :cond_5
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 403
    sget-object v1, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 405
    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Flags$Flag;

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 407
    return-object v1
.end method

.method public getUserFlags()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 418
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 421
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 427
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 373
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 374
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    .line 376
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 379
    :cond_1
    return v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    return-void
.end method

.method public remove(Ljavax/mail/Flags$Flag;)V
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 255
    return-void
.end method

.method public remove(Ljavax/mail/Flags;)V
    .locals 3

    .prologue
    .line 274
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 276
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 281
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

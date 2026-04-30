.class public final Lcom/dropbox/core/v2/files/RelocationError;
.super Ljava/lang/Object;
.source "RelocationError.java"


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field private fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

.field private fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

.field private toValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->withTagAndFromLookup(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    return-object v0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->withTagAndFromWrite(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->withTagAndTo(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 133
    return-object v0
.end method

.method private withTagAndFromLookup(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 146
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 147
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 148
    return-object v0
.end method

.method private withTagAndFromWrite(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 161
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 162
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 163
    return-object v0
.end method

.method private withTagAndTo(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 176
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 177
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 178
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 427
    if-ne p1, p0, :cond_0

    .line 464
    :goto_0
    :pswitch_0
    return v1

    .line 430
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 431
    goto :goto_0

    .line 433
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationError;

    if-eqz v2, :cond_9

    .line 434
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationError;

    .line 435
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 436
    goto :goto_0

    .line 438
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 460
    goto :goto_0

    .line 440
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 442
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    .line 444
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    move v1, v0

    goto :goto_0

    :cond_9
    move v1, v0

    .line 464
    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getFromLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v0, v1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v0, v1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 416
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 422
    return v0
.end method

.method public isCantCopySharedFolder()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCantMoveFolderIntoItself()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCantNestSharedFolder()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCantTransferOwnership()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicatedOrNestedPaths()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromLookup()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromWrite()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTo()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

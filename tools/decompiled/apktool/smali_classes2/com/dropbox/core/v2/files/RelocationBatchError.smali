.class public final Lcom/dropbox/core/v2/files/RelocationBatchError;
.super Ljava/lang/Object;
.source "RelocationBatchError.java"


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field private fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

.field private fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

.field private toValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 113
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 2

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTagAndFromLookup(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    return-object v0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 2

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTagAndFromWrite(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 2

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;->withTagAndTo(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 138
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 139
    return-object v0
.end method

.method private withTagAndFromLookup(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 152
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 153
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 154
    return-object v0
.end method

.method private withTagAndFromWrite(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 167
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 168
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 169
    return-object v0
.end method

.method private withTagAndTo(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 182
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 183
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 184
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 442
    if-ne p1, p0, :cond_0

    .line 481
    :goto_0
    :pswitch_0
    return v1

    .line 445
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 446
    goto :goto_0

    .line 448
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;

    if-eqz v2, :cond_9

    .line 449
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 450
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 451
    goto :goto_0

    .line 453
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 477
    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 457
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    .line 459
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

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

    .line 481
    goto :goto_0

    .line 453
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
        :pswitch_0
    .end packed-switch
.end method

.method public getFromLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 436
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 437
    return v0
.end method

.method public isCantCopySharedFolder()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 370
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 359
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 403
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 392
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 414
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 381
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

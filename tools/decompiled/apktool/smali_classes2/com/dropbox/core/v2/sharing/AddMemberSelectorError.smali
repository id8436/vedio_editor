.class public final Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
.super Ljava/lang/Object;
.source "AddMemberSelectorError.java"


# static fields
.field public static final AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field private invalidDropboxIdValue:Ljava/lang/String;

.field private invalidEmailValue:Ljava/lang/String;

.field private unverifiedDropboxIdValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTag(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTag(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTag(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTag(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public static invalidDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTagAndInvalidDropboxId(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    return-object v0
.end method

.method public static invalidEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTagAndInvalidEmail(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    return-object v0
.end method

.method public static unverifiedDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->withTagAndUnverifiedDropboxId(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 114
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 115
    return-object v0
.end method

.method private withTagAndInvalidDropboxId(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 129
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 130
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    .line 131
    return-object v0
.end method

.method private withTagAndInvalidEmail(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    .line 149
    return-object v0
.end method

.method private withTagAndUnverifiedDropboxId(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 165
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 166
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    .line 167
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 414
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    if-eqz p1, :cond_0

    .line 420
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    if-eqz v2, :cond_0

    .line 421
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 422
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v2, v3, :cond_0

    .line 425
    sget-object v2, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddMemberSelectorError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 427
    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 435
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 437
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 439
    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getInvalidDropboxIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v0, v1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v0, v1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INVALID_EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUnverifiedDropboxIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v0, v1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 409
    return v0
.end method

.method public isAutomaticGroup()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupDeleted()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupNotOnTeam()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidEmail()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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
    .line 398
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnverifiedDropboxId()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

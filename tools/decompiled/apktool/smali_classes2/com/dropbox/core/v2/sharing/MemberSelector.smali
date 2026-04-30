.class public final Lcom/dropbox/core/v2/sharing/MemberSelector;
.super Ljava/lang/Object;
.source "MemberSelector.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

.field private dropboxIdValue:Ljava/lang/String;

.field private emailValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector;->withTag(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public static dropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 2

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MemberSelector;->withTagAndDropboxId(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    return-object v0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 2

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MemberSelector;->withTagAndEmail(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 85
    return-object v0
.end method

.method private withTagAndDropboxId(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 101
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    .line 102
    return-object v0
.end method

.method private withTagAndEmail(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    .line 121
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 274
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    if-eqz p1, :cond_0

    .line 280
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eqz v2, :cond_0

    .line 281
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 282
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v2, v3, :cond_0

    .line 285
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberSelector$1;->$SwitchMap$com$dropbox$core$v2$sharing$MemberSelector$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 291
    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDropboxIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 269
    return v0
.end method

.method public isDropboxId()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmail()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

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
    .line 259
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

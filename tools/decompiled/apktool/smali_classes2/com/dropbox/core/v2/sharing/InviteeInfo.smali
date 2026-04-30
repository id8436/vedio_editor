.class public final Lcom/dropbox/core/v2/sharing/InviteeInfo;
.super Ljava/lang/Object;
.source "InviteeInfo.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

.field private emailValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->withTag(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/InviteeInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 2

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->withTagAndEmail(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;)Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    .line 80
    return-object v0
.end method

.method private withTagAndEmail(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    .line 98
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    .line 99
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 199
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    if-eqz p1, :cond_0

    .line 205
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    if-eqz v2, :cond_0

    .line 206
    check-cast p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 207
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 210
    sget-object v2, Lcom/dropbox/core/v2/sharing/InviteeInfo$1;->$SwitchMap$com$dropbox$core$v2$sharing$InviteeInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 214
    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 194
    return v0
.end method

.method public isEmail()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

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
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

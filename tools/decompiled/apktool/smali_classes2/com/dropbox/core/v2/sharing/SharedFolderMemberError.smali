.class public final Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
.super Ljava/lang/Object;
.source "SharedFolderMemberError.java"


# static fields
.field public static final INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field public static final NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

.field private noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 2

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->withTagAndNoExplicitAccess(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    .line 92
    return-object v0
.end method

.method private withTagAndNoExplicitAccess(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 108
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-eqz p1, :cond_0

    .line 229
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eqz v2, :cond_0

    .line 230
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 231
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v2, v3, :cond_0

    .line 234
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedFolderMemberError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 236
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 242
    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 218
    return v0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoExplicitAccess()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotAMember()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

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
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

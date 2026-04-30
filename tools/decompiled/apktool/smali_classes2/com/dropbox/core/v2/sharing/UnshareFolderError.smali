.class public final Lcom/dropbox/core/v2/sharing/UnshareFolderError;
.super Ljava/lang/Object;
.source "UnshareFolderError.java"


# static fields
.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 2

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    .line 97
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    .line 111
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 112
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 235
    if-ne p1, p0, :cond_0

    .line 262
    :goto_0
    :pswitch_0
    return v1

    .line 238
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    if-eqz v2, :cond_5

    .line 242
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 243
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/UnshareFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UnshareFolderError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 258
    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 262
    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 230
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

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
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolder()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

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
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

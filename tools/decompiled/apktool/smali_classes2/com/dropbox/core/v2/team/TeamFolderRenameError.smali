.class public final Lcom/dropbox/core/v2/team/TeamFolderRenameError;
.super Ljava/lang/Object;
.source "TeamFolderRenameError.java"


# static fields
.field public static final FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

.field private statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

.field private teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTag(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTag(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTag(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTag(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 2

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTagAndAccessError(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    return-object v0
.end method

.method public static statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 2

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTagAndStatusError(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    return-object v0
.end method

.method public static teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 2

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->withTagAndTeamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 97
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 111
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .line 112
    return-object v0
.end method

.method private withTagAndStatusError(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    .line 125
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 126
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .line 127
    return-object v0
.end method

.method private withTagAndTeamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    .line 140
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 141
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    .line 142
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 360
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    if-eqz p1, :cond_0

    .line 366
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    if-eqz v2, :cond_0

    .line 367
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 368
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v2, v3, :cond_0

    .line 371
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderRenameError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderRenameError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 379
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 381
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 383
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 385
    goto :goto_0

    .line 371
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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method public getStatusErrorValue()Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.STATUS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method public getTeamSharedDropboxErrorValue()Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v0, v1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 354
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 355
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderNameAlreadyUsed()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderNameReserved()Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidFolderName()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

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
    .line 310
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusError()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamSharedDropboxError()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/dropbox/core/v2/sharing/SharePathError;
.super Ljava/lang/Object;
.source "SharePathError.java"


# static fields
.field public static final CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/SharePathError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field private alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 107
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 140
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 144
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 148
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method public static alreadyShared(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 2

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/SharePathError;->withTagAndAlreadyShared(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    .line 174
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 175
    return-object v0
.end method

.method private withTagAndAlreadyShared(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>()V

    .line 189
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 190
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 191
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 417
    if-ne p1, p0, :cond_0

    .line 462
    :goto_0
    :pswitch_0
    return v1

    .line 420
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 421
    goto :goto_0

    .line 423
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/SharePathError;

    if-eqz v2, :cond_5

    .line 424
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 425
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 426
    goto :goto_0

    .line 428
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharePathError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 458
    goto :goto_0

    .line 448
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 462
    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAlreadySharedValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-eq v0, v1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ALREADY_SHARED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 408
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 412
    return v0
.end method

.method public isAlreadyShared()Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainsAppFolder()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainsSharedFolder()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainsTeamFolder()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideAppFolder()Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideOsxPackage()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsidePublicFolder()Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideSharedFolder()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidPath()Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsAppFolder()Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsFile()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsOsxPackage()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsPublicFolder()Z
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

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
    .line 403
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

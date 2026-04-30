.class public final Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
.super Ljava/lang/Object;
.source "AssetLogInfo.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

.field private fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

.field private folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

.field private paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

.field private paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object v0
.end method

.method public static file(Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->withTagAndFile(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static folder(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->withTagAndFolder(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static paperDocument(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->withTagAndPaperDocument(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static paperFolder(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->withTagAndPaperFolder(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 94
    return-object v0
.end method

.method private withTagAndFile(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 108
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 109
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    .line 110
    return-object v0
.end method

.method private withTagAndFolder(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 124
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 125
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    .line 126
    return-object v0
.end method

.method private withTagAndPaperDocument(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 141
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 142
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    .line 143
    return-object v0
.end method

.method private withTagAndPaperFolder(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 158
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 159
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    .line 160
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    if-eqz p1, :cond_0

    .line 406
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    if-eqz v2, :cond_0

    .line 407
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    .line 408
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 411
    sget-object v2, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$AssetLogInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/FileLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 417
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 419
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 421
    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getFileValue()Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FILE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object v0
.end method

.method public getFolderValue()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FOLDER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object v0
.end method

.method public getPaperDocumentValue()Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PAPER_DOCUMENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object v0
.end method

.method public getPaperFolderValue()Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PAPER_FOLDER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 388
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->fileValue:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folderValue:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocumentValue:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolderValue:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 395
    return v0
.end method

.method public isFile()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolder()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

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
    .line 383
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaperDocument()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaperFolder()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

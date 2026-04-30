.class public Lcom/adobe/customextractor/DataSource/CustomDataSource;
.super Ljava/lang/Object;
.source "CustomDataSource.java"

# interfaces
.implements Lcom/adobe/customextractor/DataSource/UriDataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"


# instance fields
.field private final assetDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

.field private final contentDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

.field private dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

.field private final fileDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;

    invoke-direct {v0, p2}, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;-><init>(Lcom/adobe/customextractor/DataSource/TransferListener;)V

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->fileDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    .line 77
    new-instance v0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->assetDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    .line 78
    new-instance v0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->contentDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adobe/customextractor/DataSource/CustomDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/DataSource/CustomDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/adobe/customextractor/DataSource/CustomDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/UriDataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iput-object v1, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    .line 122
    :cond_0
    return-void

    .line 119
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    .line 120
    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/UriDataSource;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/adobe/customextractor/DataSource/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 85
    iget-object v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->assetDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    invoke-interface {v0, p1}, Lcom/adobe/customextractor/DataSource/UriDataSource;->open(Lcom/adobe/customextractor/DataSource/DataSpec;)J

    move-result-wide v0

    return-wide v0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->fileDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    goto :goto_1

    .line 92
    :cond_3
    const-string/jumbo v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->assetDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    goto :goto_1

    .line 94
    :cond_4
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->contentDataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    goto :goto_1

    .line 97
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/CustomDataSource;->dataSource:Lcom/adobe/customextractor/DataSource/UriDataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/customextractor/DataSource/UriDataSource;->read([BII)I

    move-result v0

    return v0
.end method

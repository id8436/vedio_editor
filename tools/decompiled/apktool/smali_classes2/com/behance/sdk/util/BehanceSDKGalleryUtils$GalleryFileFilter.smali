.class Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;
.super Ljava/lang/Object;
.source "BehanceSDKGalleryUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private includeVideo:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p1, p0, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;->includeVideo:Z

    .line 100
    return-void
.end method

.method synthetic constructor <init>(ZLcom/behance/sdk/util/BehanceSDKGalleryUtils$1;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;-><init>(Z)V

    return-void
.end method

.method private isCompatible(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;->includeVideo:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;->isCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

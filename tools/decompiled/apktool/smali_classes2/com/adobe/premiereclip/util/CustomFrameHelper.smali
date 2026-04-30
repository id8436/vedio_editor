.class public Lcom/adobe/premiereclip/util/CustomFrameHelper;
.super Landroid/os/AsyncTask;
.source "CustomFrameHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/adobe/premiereclip/util/CustomFrameHelper;


# instance fields
.field private height:I

.field private onCompletionListener:Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;

.field private path:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/util/CustomFrameHelper;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->instance:Lcom/adobe/premiereclip/util/CustomFrameHelper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/adobe/premiereclip/util/CustomFrameHelper;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/CustomFrameHelper;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->instance:Lcom/adobe/premiereclip/util/CustomFrameHelper;

    .line 49
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->instance:Lcom/adobe/premiereclip/util/CustomFrameHelper;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 64
    new-instance v1, Lcom/adobe/customextractor/ClipExtractor;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/ClipExtractor;-><init>(Landroid/content/Context;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/customextractor/ClipExtractor;->setDataSource(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-wide/32 v2, 0x927c0

    iget v4, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->width:I

    iget v5, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->height:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/customextractor/ClipExtractor;->getFrameAtTime(JIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    invoke-virtual {v1}, Lcom/adobe/customextractor/ClipExtractor;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/CustomFrameHelper;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->onCompletionListener:Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->onCompletionListener:Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;

    invoke-interface {v0, p1}, Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;->onComplete(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/util/CustomFrameHelper;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/CustomFrameHelper;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->instance:Lcom/adobe/premiereclip/util/CustomFrameHelper;

    .line 84
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/CustomFrameHelper;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->onCompletionListener:Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;

    .line 60
    return-void
.end method

.method public setParams(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->path:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->width:I

    .line 55
    iput p3, p0, Lcom/adobe/premiereclip/util/CustomFrameHelper;->height:I

    .line 56
    return-void
.end method

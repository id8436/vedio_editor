.class Lcom/dd/crop/a;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic a:Lcom/dd/crop/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/dd/crop/TextureVideoView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/dd/crop/a;->a:Lcom/dd/crop/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 216
    const-string/jumbo v0, "OnVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/dd/crop/a;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Lcom/dd/crop/TextureVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/dd/crop/a;->a:Lcom/dd/crop/TextureVideoView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/dd/crop/TextureVideoView;->a(Lcom/dd/crop/TextureVideoView;F)F

    .line 219
    iget-object v0, p0, Lcom/dd/crop/a;->a:Lcom/dd/crop/TextureVideoView;

    int-to-float v1, p3

    invoke-static {v0, v1}, Lcom/dd/crop/TextureVideoView;->b(Lcom/dd/crop/TextureVideoView;F)F

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/dd/crop/a;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->b(Lcom/dd/crop/TextureVideoView;)V

    .line 222
    return-void
.end method

.class Lcom/dd/crop/c;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/dd/crop/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/dd/crop/TextureVideoView;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dd/crop/TextureVideoView;->a(Lcom/dd/crop/TextureVideoView;Z)Z

    .line 248
    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->d(Lcom/dd/crop/TextureVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->e(Lcom/dd/crop/TextureVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->f(Lcom/dd/crop/TextureVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v0, "Player is prepared and play() was called."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->a()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->c(Lcom/dd/crop/TextureVideoView;)Lcom/dd/crop/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/dd/crop/c;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->c(Lcom/dd/crop/TextureVideoView;)Lcom/dd/crop/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/dd/crop/e;->a()V

    .line 256
    :cond_1
    return-void
.end method

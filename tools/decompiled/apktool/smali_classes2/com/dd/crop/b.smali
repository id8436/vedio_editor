.class Lcom/dd/crop/b;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/dd/crop/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/dd/crop/TextureVideoView;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/dd/crop/b;->a:Lcom/dd/crop/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dd/crop/b;->a:Lcom/dd/crop/TextureVideoView;

    sget-object v1, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    invoke-static {v0, v1}, Lcom/dd/crop/TextureVideoView;->a(Lcom/dd/crop/TextureVideoView;Lcom/dd/crop/g;)Lcom/dd/crop/g;

    .line 230
    const-string/jumbo v0, "Video has ended."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/dd/crop/b;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->c(Lcom/dd/crop/TextureVideoView;)Lcom/dd/crop/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dd/crop/b;->a:Lcom/dd/crop/TextureVideoView;

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->c(Lcom/dd/crop/TextureVideoView;)Lcom/dd/crop/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/dd/crop/e;->b()V

    .line 236
    :cond_0
    return-void
.end method

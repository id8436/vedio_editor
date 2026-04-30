.class Lcom/adobe/premiereclip/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$13;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$13;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/MainActivity;->access$1700(Lcom/adobe/premiereclip/MainActivity;Landroid/graphics/Bitmap;)V

    .line 1716
    return-void
.end method

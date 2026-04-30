.class Lcom/adobe/premiereclip/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$6;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public onPreparingCancelled()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$6;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$800(Lcom/adobe/premiereclip/MainActivity;)V

    .line 398
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$6;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$900(Lcom/adobe/premiereclip/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 399
    return-void
.end method

.method public onPublished()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onSavingCancelled()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

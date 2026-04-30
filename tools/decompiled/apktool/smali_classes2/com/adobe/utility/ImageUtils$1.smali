.class final Lcom/adobe/utility/ImageUtils$1;
.super Ljava/lang/Object;
.source "ImageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$errorDialogButtonInterface:Lcom/adobe/utility/ErrorDialogButtonInterface;


# direct methods
.method constructor <init>(Lcom/adobe/utility/ErrorDialogButtonInterface;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adobe/utility/ImageUtils$1;->val$errorDialogButtonInterface:Lcom/adobe/utility/ErrorDialogButtonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/utility/ImageUtils$1;->val$errorDialogButtonInterface:Lcom/adobe/utility/ErrorDialogButtonInterface;

    invoke-interface {v0}, Lcom/adobe/utility/ErrorDialogButtonInterface;->setPositiveButtonAction()V

    .line 193
    return-void
.end method

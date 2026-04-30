.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$2;
.super Ljava/lang/Object;
.source "CCFilesEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 363
    return-void
.end method

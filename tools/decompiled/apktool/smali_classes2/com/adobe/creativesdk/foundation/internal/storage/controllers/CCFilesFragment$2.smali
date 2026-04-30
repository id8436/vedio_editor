.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$2;
.super Ljava/lang/Object;
.source "CCFilesFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->configureMultiSelectViews()V

    .line 368
    return-void
.end method

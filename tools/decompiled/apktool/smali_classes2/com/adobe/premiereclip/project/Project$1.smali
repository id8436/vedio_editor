.class Lcom/adobe/premiereclip/project/Project$1;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/project/Project;

.field final synthetic val$removedClips:Ljava/util/ArrayList;

.field final synthetic val$updatedClips:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/project/Project;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project$1;->this$0:Lcom/adobe/premiereclip/project/Project;

    iput-object p2, p0, Lcom/adobe/premiereclip/project/Project$1;->val$updatedClips:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/adobe/premiereclip/project/Project$1;->val$removedClips:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project$1;->val$updatedClips:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClips(Ljava/util/ArrayList;)V

    .line 723
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project$1;->val$removedClips:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->removeClips(Ljava/util/ArrayList;)V

    .line 724
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 725
    return-void
.end method

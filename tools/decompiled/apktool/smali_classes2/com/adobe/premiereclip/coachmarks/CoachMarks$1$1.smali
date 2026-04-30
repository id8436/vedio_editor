.class Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;
.super Ljava/lang/Object;
.source "CoachMarks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

.field final synthetic val$mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iput-object p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->val$mView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1000(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->val$mView:Landroid/view/View;

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iget-object v2, v2, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1100(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 223
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iget-object v1, v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$paramList:Ljava/util/List;

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;->this$1:Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;

    iget v2, v2, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$listIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1200(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Ljava/util/List;I)V

    .line 225
    :cond_0
    return-void
.end method

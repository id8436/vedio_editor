.class Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;
.super Ljava/lang/Object;
.source "CoachMarks.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field final synthetic val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iput-object p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iput-object p3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$200(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$2;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$200(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.class Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;
.super Ljava/lang/Object;
.source "CoachMarks.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field final synthetic val$p:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iput-object p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->val$p:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1500(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)V

    .line 324
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1002(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Z)Z

    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->val$p:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v1, v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->PrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$3;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1002(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Z)Z

    .line 315
    return-void
.end method

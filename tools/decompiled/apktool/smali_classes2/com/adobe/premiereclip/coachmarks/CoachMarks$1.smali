.class Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;
.super Ljava/lang/Object;
.source "CoachMarks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field final synthetic val$listIndex:I

.field final synthetic val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

.field final synthetic val$paramList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iput-object p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iput-object p3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$paramList:Ljava/util/List;

    iput p4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$listIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 195
    invoke-static {}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$000()I

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$100(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$200(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v1, v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->PrefKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$402(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 201
    new-instance v6, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;

    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v2, v2, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->X:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v3, v3, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->Y:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v4, v4, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->trianglePaddingX:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-boolean v5, v5, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->bAtCentre:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;-><init>(Landroid/content/Context;IIILjava/lang/Boolean;)V

    .line 203
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$600(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$400(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v3}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$500(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v1, v6}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$700(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$802(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;)Landroid/view/View;

    .line 206
    const v1, 0x7f120496

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    const v2, 0x7f120497

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    const v3, 0x7f120498

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 209
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v4}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$900(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Lcom/h/a/a;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 210
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v4}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$900(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Lcom/h/a/a;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 211
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v4}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$900(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Lcom/h/a/a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 212
    iget-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v4, v4, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v1, v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->body:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-boolean v1, v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->okMsg:Z

    if-nez v1, :cond_2

    .line 215
    const v1, 0x7f0a03cd

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1002(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Z)Z

    .line 218
    new-instance v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$1;-><init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$2;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1$2;-><init>(Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$400(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$500(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    .line 240
    check-cast v1, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarksFullScreenContainer;->getAbsoluteTriangleTip()Landroid/graphics/PointF;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-static {v2}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1300(Lcom/adobe/premiereclip/coachmarks/CoachMarks;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 242
    const-string/jumbo v2, "Pivot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$008()I

    .line 244
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->this$0:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$1;->val$param:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    invoke-static {v1, v0, v2, p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->access$1400(Lcom/adobe/premiereclip/coachmarks/CoachMarks;Landroid/view/View;Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.class public Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;
.super Landroid/widget/RelativeLayout;
.source "BackgroundOverlay.java"


# instance fields
.field private background:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;->background:Landroid/view/View;

    .line 36
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    const v1, 0x7f040107

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    const v0, 0x7f120499

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;->background:Landroid/view/View;

    .line 41
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;->getMeasuredWidth()I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;->getMeasuredHeight()I

    move-result v1

    .line 47
    const-string/jumbo v2, "Background"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/BackgroundOverlay;->background:Landroid/view/View;

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 49
    return-void
.end method

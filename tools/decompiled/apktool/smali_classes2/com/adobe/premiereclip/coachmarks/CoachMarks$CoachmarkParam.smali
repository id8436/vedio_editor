.class public Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;
.super Ljava/lang/Object;
.source "CoachMarks.java"


# instance fields
.field public PrefKey:Ljava/lang/String;

.field public X:Ljava/lang/Integer;

.field public Y:Ljava/lang/Integer;

.field public attachToView:Landroid/view/View;

.field public bAtCentre:Z

.field public body:Ljava/lang/String;

.field public delay:J

.field public okMsg:Z

.field public title:Ljava/lang/String;

.field public trianglePaddingX:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->title:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->body:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->attachToView:Landroid/view/View;

    .line 80
    iput-boolean p5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->bAtCentre:Z

    .line 81
    if-nez p6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->X:Ljava/lang/Integer;

    .line 82
    if-nez p7, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->Y:Ljava/lang/Integer;

    .line 83
    iput-boolean p9, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->okMsg:Z

    .line 84
    if-nez p8, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->trianglePaddingX:Ljava/lang/Integer;

    .line 85
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    .line 86
    iput-object p3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->PrefKey:Ljava/lang/String;

    .line 87
    return-void

    .line 81
    :cond_0
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2
.end method

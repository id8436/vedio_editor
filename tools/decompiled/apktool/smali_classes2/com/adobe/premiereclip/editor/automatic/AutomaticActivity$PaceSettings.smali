.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;
.super Landroid/support/v4/app/Fragment;
.source "AutomaticActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private duration:Landroid/widget/TextView;

.field private paceBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 989
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public disablePacebar()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1044
    :cond_0
    return-void
.end method

.method public enablePacebar()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1050
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 995
    const v0, 0x7f040129

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 997
    const v0, 0x7f1204dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    .line 998
    const v0, 0x7f1204dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->duration:Landroid/widget/TextView;

    .line 999
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->setSequenceTime(Ljava/lang/Long;)V

    .line 1002
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    invoke-static {v2, v3}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 1003
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1027
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->paceBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioSyncPace()F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1028
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->disablePacebar()V

    .line 1032
    :cond_0
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 1033
    return-object v1
.end method

.method public setSequenceTime(Ljava/lang/Long;)V
    .locals 5

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->duration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adobe/premiereclip/util/Utilities;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    return-void
.end method

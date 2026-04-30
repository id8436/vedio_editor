.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2913
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    .line 2908
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2909
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2911
    iput-boolean v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2914
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2915
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2917
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2919
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2920
    const-string/jumbo v0, "mobeta"

    const-string/jumbo v1, "file created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2921
    :catch_0
    move-exception v0

    .line 2922
    const-string/jumbo v1, "mobeta"

    const-string/jumbo v2, "Could not create dslv_state.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    const-string/jumbo v1, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public appendState()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2936
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v0, :cond_1

    .line 2987
    :cond_0
    :goto_0
    return-void

    .line 2940
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v2

    .line 2942
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2943
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Positions>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2944
    :goto_1
    if-ge v0, v2, :cond_2

    .line 2945
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2947
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Positions>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2949
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Tops>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2950
    :goto_2
    if-ge v0, v2, :cond_3

    .line 2951
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2953
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Tops>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Bottoms>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2955
    :goto_3
    if-ge v0, v2, :cond_4

    .line 2956
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2958
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Bottoms>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FirstExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 2962
    invoke-static {v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FirstExpBlankHeight>\n"

    .line 2963
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SecondExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 2966
    invoke-static {v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SecondExpBlankHeight>\n"

    .line 2967
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SrcPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SrcHeight>\n"

    .line 2970
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ViewHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</ViewHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <LastY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$3000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</LastY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FloatY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$2000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FloatY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ShuffleEdges>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2975
    :goto_4
    if-ge v0, v2, :cond_5

    .line 2976
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    add-int v6, v3, v0

    iget-object v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$3100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2978
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</ShuffleEdges>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2983
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 2984
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 2985
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2990
    iget-boolean v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v1, :cond_0

    .line 3012
    :goto_0
    return-void

    .line 2996
    :cond_0
    const/4 v1, 0x1

    .line 2997
    :try_start_0
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v2, :cond_1

    .line 3000
    :goto_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3002
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3005
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 3006
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 3008
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3009
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2933
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 3015
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 3018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 3020
    :cond_0
    return-void
.end method

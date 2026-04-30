.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

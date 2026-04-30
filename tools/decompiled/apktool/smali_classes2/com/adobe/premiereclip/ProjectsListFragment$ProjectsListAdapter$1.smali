.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$1;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/premiereclip/project/Project;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$1;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/project/Project;)I
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/Project;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 296
    check-cast p1, Lcom/adobe/premiereclip/project/Project;

    check-cast p2, Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$1;->compare(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/project/Project;)I

    move-result v0

    return v0
.end method

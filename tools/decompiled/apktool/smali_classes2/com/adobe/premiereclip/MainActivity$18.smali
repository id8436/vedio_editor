.class Lcom/adobe/premiereclip/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openSyncTableView()V
    .locals 3

    .prologue
    .line 1945
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const-class v2, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1946
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1947
    return-void
.end method

.method public removeProjectSyncingText()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1976
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1977
    if-nez v0, :cond_1

    .line 1991
    :cond_0
    :goto_0
    return-void

    .line 1978
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android:switcher:2131887384:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1979
    invoke-static {v4}, Lcom/adobe/premiereclip/MainActivity;->access$600(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1978
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1980
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/adobe/premiereclip/ProjectsListFragment;

    if-eqz v0, :cond_0

    .line 1981
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1982
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 1983
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    const-string/jumbo v4, "preferences"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 1984
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    move-object v0, v1

    .line 1985
    check-cast v0, Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->showNoProjectCreatedText()V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1983
    goto :goto_1

    .line 1988
    :cond_4
    check-cast v1, Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->removeProjectViewMessageText()V

    goto :goto_0
.end method

.method public retryPendingPPro()V
    .locals 0

    .prologue
    .line 1952
    return-void
.end method

.method public showConnectionFailureDialog(Z)V
    .locals 5

    .prologue
    .line 1928
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1929
    if-nez v1, :cond_0

    .line 1941
    :goto_0
    return-void

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v2, 0x7f0a03e3

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1933
    if-nez p1, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v2, 0x7f0a03e1

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1936
    :cond_1
    new-instance v2, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v3, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v4, 0x7f0a03e2

    .line 1937
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1940
    invoke-virtual {v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0
.end method

.method public showConnectionFailureIcon()V
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1883
    if-nez v0, :cond_0

    .line 1894
    :goto_0
    return-void

    .line 1884
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/MainActivity$18$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$18$1;-><init>(Lcom/adobe/premiereclip/MainActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showProjectSyncingText()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1956
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1957
    if-nez v0, :cond_1

    .line 1972
    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android:switcher:2131887384:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1959
    invoke-static {v4}, Lcom/adobe/premiereclip/MainActivity;->access$600(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1958
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1960
    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    if-eqz v0, :cond_2

    .line 1961
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v4, "currently in communityfragment"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1965
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1966
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    const-string/jumbo v4, "preferences"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 1967
    :goto_1
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/adobe/premiereclip/ProjectsListFragment;

    if-eqz v2, :cond_0

    .line 1968
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    .line 1969
    :cond_3
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v2, "currently in projectslistfragment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1970
    check-cast v0, Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->showProjectDownloadingText()V

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1966
    goto :goto_1
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1899
    if-nez v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1900
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/MainActivity$18$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$18$2;-><init>(Lcom/adobe/premiereclip/MainActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1914
    if-nez v0, :cond_0

    .line 1924
    :goto_0
    return-void

    .line 1915
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/MainActivity$18$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$18$3;-><init>(Lcom/adobe/premiereclip/MainActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

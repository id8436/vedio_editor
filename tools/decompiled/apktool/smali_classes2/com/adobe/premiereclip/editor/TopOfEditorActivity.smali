.class public Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.super Landroid/app/Activity;
.source "TopOfEditorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 38
    const-string/jumbo v0, "go_to_editor"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getEditMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    :goto_0
    const-string/jumbo v2, "project_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "newProject"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "go_to_editor"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

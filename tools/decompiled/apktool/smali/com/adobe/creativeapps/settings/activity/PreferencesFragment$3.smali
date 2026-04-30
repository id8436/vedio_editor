.class Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$3;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$200(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->high_res_export_not_supported:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    return-void
.end method

.class Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$1;
.super Ljava/lang/Object;
.source "CloudPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$1;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$1;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->onBackPressed()V

    .line 85
    return-void
.end method

.class final Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$currentActivity:Landroid/app/Activity;

.field final synthetic val$request:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;->val$currentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;->val$request:Landroid/content/Intent;

    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;->val$currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;->val$request:Landroid/content/Intent;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method

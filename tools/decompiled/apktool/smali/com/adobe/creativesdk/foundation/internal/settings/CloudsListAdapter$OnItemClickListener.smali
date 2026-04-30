.class Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "CloudPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mPosition:I

.field private mparent:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mview:Landroid/view/View;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 310
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->mPosition:I

    .line 312
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->mparent:Landroid/widget/AdapterView;

    .line 313
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->mview:Landroid/view/View;

    .line 315
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->access$000(Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->mparent:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->mview:Landroid/view/View;

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;->mPosition:I

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 320
    return-void
.end method

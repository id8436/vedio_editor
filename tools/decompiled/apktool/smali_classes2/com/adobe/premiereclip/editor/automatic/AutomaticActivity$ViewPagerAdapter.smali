.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "AutomaticActivity.java"


# instance fields
.field registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 782
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 783
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 780
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 784
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 814
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 815
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x2

    return v0
.end method

.method public getInstantiatedFragmentCount()I
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 788
    packed-switch p1, :pswitch_data_0

    .line 796
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;-><init>()V

    :goto_0
    return-object v0

    .line 790
    :pswitch_0
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;-><init>()V

    goto :goto_0

    .line 793
    :pswitch_1
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;-><init>()V

    goto :goto_0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 807
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    return-object v0
.end method

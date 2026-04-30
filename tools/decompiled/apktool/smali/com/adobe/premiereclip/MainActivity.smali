.class public Lcom/adobe/premiereclip/MainActivity;
.super Lcom/adobe/premiereclip/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;
.implements Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;
.implements Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "nd82cy66iibva6b"

.field private static final APP_SECRET:Ljava/lang/String; = "6fq9hvl1cu0g86a"

.field private static final NUM_PAGES:I = 0x3

.field private static final PROJECT_TYPE_REQUEST:I = 0x4e2a

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x2


# instance fields
.field private final ITEM_ABOUT:I

.field private final ITEM_BUMPER_PREFERENCE:I

.field private final ITEM_FEEDBACK:I

.field private final ITEM_MAIN:I

.field private final ITEM_OVERLAY_PREFERENCE:I

.field private final ITEM_PREFERENCES:I

.field private final ITEM_PROFILE:I

.field private final ITEM_SEPARATOR:I

.field private final MY_PERMISSIONS_REQUEST_CAMERA:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS:I

.field private final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I

.field private final PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE:I

.field private final PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE_2:I

.field private final PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX:I

.field private final PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX_2:I

.field private final PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_BUMPER:I

.field private final PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_WATERMARK:I

.field private final PERMISSIONS_REQUEST_READ_WRITE_EXTERNAL_STORAGE_FOR_PROJECT_FROM_OTHER_APPS:I

.field private TAG:Ljava/lang/String;

.field private bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

.field private bugAssetPath:Ljava/lang/String;

.field private bumperAssetPath:Ljava/lang/String;

.field private cancelLRProject:Z

.field private ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

.field private creatingLRProjectMessageDialog:Landroid/app/Dialog;

.field private dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

.field private floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private fragmentClass:Ljava/lang/Class;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private isDrawerOpen:Z

.field private mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field private mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/support/v7/widget/RecyclerView;

.field private mDrawerOptions:[Ljava/lang/String;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field final maxAssetAllowedFromLR:I

.field private mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

.field private mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

.field private networkStateReceiver:Landroid/content/BroadcastReceiver;

.field private network_reachability_observer:Ljava/util/Observer;

.field private pageTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placeHolderButton:Landroid/widget/ImageButton;

.field private previousTabID:I

.field private projectType:I

.field private subview_fragmentView:Landroid/widget/TextView;

.field private syncCloudButton:Landroid/widget/ImageView;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private viewPagerAdapter:Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/base/BaseActivity;-><init>()V

    .line 152
    const-string/jumbo v0, "MainActivity"

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    .line 153
    const/16 v0, 0x64

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->maxAssetAllowedFromLR:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->previousTabID:I

    .line 169
    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 170
    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 171
    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 172
    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->MY_PERMISSIONS_REQUEST_CAMERA:I

    .line 173
    const/16 v0, 0xe

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I

    .line 174
    const/16 v0, 0xf

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_WATERMARK:I

    .line 175
    const/16 v0, 0x10

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_BUMPER:I

    .line 176
    const/16 v0, 0x11

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_WRITE_EXTERNAL_STORAGE_FOR_PROJECT_FROM_OTHER_APPS:I

    .line 177
    const/16 v0, 0x47

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS:I

    .line 178
    const/16 v0, 0x48

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE:I

    .line 179
    const/16 v0, 0x4a

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE_2:I

    .line 180
    const/16 v0, 0x49

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX:I

    .line 181
    const/16 v0, 0x4b

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX_2:I

    .line 190
    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->bugAssetPath:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->bumperAssetPath:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_PROFILE:I

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_MAIN:I

    .line 196
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_ABOUT:I

    .line 197
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_PREFERENCES:I

    .line 198
    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_SEPARATOR:I

    .line 199
    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_FEEDBACK:I

    .line 200
    const/4 v0, 0x6

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_OVERLAY_PREFERENCE:I

    .line 201
    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->ITEM_BUMPER_PREFERENCE:I

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->initDCXSyncStatusButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->updateSyncMessageProjectsListFragment()V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->pageTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->updatePreferenceFragmentsView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/premiereclip/MainActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/MainActivity;->postBumperPreview(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/adobe/premiereclip/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/MainActivity;->updatePreferenceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/adobe/premiereclip/MainActivity;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/MainActivity;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/adobe/premiereclip/MainActivity;->isDrawerOpen:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->addBrandingMediaFromGoogleDrive()V

    return-void
.end method

.method static synthetic access$202(Lcom/adobe/premiereclip/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/adobe/premiereclip/MainActivity;->isDrawerOpen:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->addBrandingMediaFromDropbox()V

    return-void
.end method

.method static synthetic access$2200(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->placeHolderButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->syncCloudButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/adobe/premiereclip/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showErrorDialogForLRImport()V

    return-void
.end method

.method static synthetic access$2900(Lcom/adobe/premiereclip/MainActivity;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/adobe/premiereclip/MainActivity;->cancelLRProject:Z

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/BottomSheetView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/adobe/premiereclip/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/MainActivity;->openLightRoomProject(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/MainActivity;)I
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->getPreviousTabID()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/MainActivity;II)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/MainActivity;->refreshAnalyticsForSelectedTab(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->cancelLRProjectCreation()V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/MainActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->creatingLRProjectMessageDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private addBrandingMediaFromDropbox()V
    .locals 4

    .prologue
    .line 1063
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    const-string/jumbo v0, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string/jumbo v0, "single_selection"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1067
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    const-class v2, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;

    if-ne v0, v2, :cond_1

    .line 1068
    const/16 v0, 0x271e

    .line 1069
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1077
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1078
    :cond_0
    return-void

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    const-class v2, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    if-ne v0, v2, :cond_0

    .line 1071
    const/16 v0, 0x271d

    .line 1072
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addBrandingMediaFromGoogleDrive()V
    .locals 4

    .prologue
    .line 1045
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1046
    const-string/jumbo v0, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string/jumbo v0, "single_selection"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1049
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    const-class v2, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;

    if-ne v0, v2, :cond_1

    .line 1050
    const/16 v0, 0x271e

    .line 1051
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1059
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1060
    :cond_0
    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    const-class v2, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    if-ne v0, v2, :cond_0

    .line 1053
    const/16 v0, 0x271d

    .line 1054
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addOnClickListenerForSyncButton()V
    .locals 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->syncCloudButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$17;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$17;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1876
    return-void
.end method

.method private cancelLRProjectCreation()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/MainActivity;->cancelLRProject:Z

    .line 602
    return-void
.end method

.method private createGalleryLikeIntentFromURIArrayList(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 548
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v0

    .line 550
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 551
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 552
    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 553
    if-eqz v5, :cond_2

    .line 554
    invoke-static {v5}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 550
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 562
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 564
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 566
    goto :goto_1

    .line 568
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "externalapp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 569
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 570
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 572
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/adobe/premiereclip/util/Utilities;->copyFileProviderUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    .line 576
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 584
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 585
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a050e

    .line 586
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a050d

    .line 587
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 589
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 590
    const/4 v0, 0x0

    .line 597
    :goto_2
    return-object v0

    .line 591
    :cond_6
    if-eqz v2, :cond_7

    .line 592
    const v0, 0x7f0a050f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 596
    const-string/jumbo v1, "Gallery_selected_paths"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private createNewProject()V
    .locals 3

    .prologue
    .line 1132
    const-string/jumbo v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CreateNewProject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->createNewProject(Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method private createNewProject(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1114
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    invoke-virtual {v0, p1, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->createProject(Ljava/lang/String;I)Lcom/adobe/premiereclip/project/Project;

    move-result-object v9

    .line 1115
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/adobe/premiereclip/project/ProjectManager;->addProject(Lcom/adobe/premiereclip/project/Project;)V

    .line 1116
    iget v0, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    invoke-virtual {v9, v0}, Lcom/adobe/premiereclip/project/Project;->setEditMode(I)V

    .line 1117
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    .line 1118
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    .line 1120
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v3

    .line 1121
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1122
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getEditMode()I

    move-result v7

    if-ne v7, v5, :cond_1

    :goto_0
    move-object v7, v6

    .line 1117
    invoke-virtual/range {v0 .. v7}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoWithTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCreateNewProject()V

    .line 1126
    invoke-direct {p0, v9}, Lcom/adobe/premiereclip/MainActivity;->openEditor(Lcom/adobe/premiereclip/project/Project;)V

    .line 1127
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1129
    :cond_0
    return-void

    :cond_1
    move v5, v8

    .line 1122
    goto :goto_0
.end method

.method private getCCAssetsList(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2004
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$19;

    invoke-direct {v0, p0, p3, p1}, Lcom/adobe/premiereclip/MainActivity$19;-><init>(Lcom/adobe/premiereclip/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 2067
    new-instance v1, Lcom/adobe/premiereclip/MainActivity$20;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$20;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    .line 2075
    new-instance v2, Lcom/adobe/premiereclip/MainActivity$21;

    invoke-direct {v2, p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity$21;-><init>(Lcom/adobe/premiereclip/MainActivity;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 2084
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$22;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$22;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    .line 2092
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;->AdobePhotoCatalogTypeLightroom:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->listCatalogOfType(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 2094
    return-void
.end method

.method private getCCPreferenceAssetDownloadCallback(Z)Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;
    .locals 1

    .prologue
    .line 1747
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/MainActivity$14;-><init>(Lcom/adobe/premiereclip/MainActivity;Z)V

    return-object v0
.end method

.method private getCurrentTimeStamp()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1138
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 1139
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 1140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1141
    const v3, 0x7f0a045d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/adobe/premiereclip/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    return-object v0
.end method

.method private getPreferenceProjectKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    const-string/jumbo v0, "preferenceproject"

    return-object v0
.end method

.method private getPreviousTabID()I
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/adobe/premiereclip/MainActivity;->previousTabID:I

    return v0
.end method

.method private getSyncStatusButtonListener()Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;
    .locals 1

    .prologue
    .line 1879
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$18;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    return-object v0
.end method

.method private goToTourView()V
    .locals 2

    .prologue
    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1147
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1148
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1149
    return-void
.end method

.method private handleMediaFromExternalApp(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 470
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_SEND_MULTIPLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->handleMediaUrisFromExternalApp(Ljava/util/ArrayList;)V

    .line 478
    :cond_0
    return-void
.end method

.method private handleMediaUrisFromExternalApp(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/MainActivity;->createGalleryLikeIntentFromURIArrayList(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    const/16 v1, 0x2716

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/MainActivity;->selectProjectType(ILandroid/content/Intent;)V

    .line 485
    :cond_0
    return-void
.end method

.method private hideMainViewWidgets()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 933
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->subview_fragmentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 938
    const v0, 0x7f120514

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    .line 939
    return-void
.end method

.method private hideSyncButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 872
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->syncCloudButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 873
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->syncCloudButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->placeHolderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 875
    return-void
.end method

.method private initDCXSyncStatusButton()V
    .locals 3

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->getSyncStatusButtonListener()Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    move-result-object v0

    .line 658
    new-instance v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    .line 659
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->addOnClickListenerForSyncButton()V

    .line 660
    return-void
.end method

.method private loadAuth()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_KEY"

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_SECRET"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 525
    :cond_0
    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loginToDropbox()V
    .locals 2

    .prologue
    .line 510
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "in loginToDropbox: Gallery"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->loadAuth()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nd82cy66iibva6b"

    invoke-static {v0, v1}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method private openEditor(Lcom/adobe/premiereclip/project/Project;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1099
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getEditMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    :goto_0
    const-string/jumbo v1, "project_key"

    iget-object v2, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string/jumbo v1, "newProject"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1108
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1109
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1110
    return-void

    .line 1103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private openLightRoomProject(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1081
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    const/16 v1, 0x232a

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/NewProjectData;->setMediaRequestType(I)V

    .line 1082
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/NewProjectData;->setMediaRequestResult(Landroid/content/Intent;)V

    .line 1083
    const-string/jumbo v0, "AdobeAssetCollection"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1084
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/util/Utilities;->canDownloadLRAssets(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1085
    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1094
    :goto_0
    return-void

    .line 1088
    :cond_0
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/util/Utilities;->areAllLRAssetsLargerThanMaxFileSize(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    const v0, 0x7f0a0398

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1092
    :cond_1
    iput v2, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    .line 1093
    const-string/jumbo v0, "ProjectName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->createNewProject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postBumperPreview(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f12051d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1724
    instance-of v1, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    if-eqz v1, :cond_0

    .line 1725
    check-cast v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->postBumperPreview(Landroid/graphics/Bitmap;)V

    .line 1727
    :cond_0
    return-void
.end method

.method private prepareAndUpdatePreferenceData(Landroid/content/Intent;Z)V
    .locals 6

    .prologue
    .line 1394
    const-string/jumbo v0, "Gallery_selected_paths"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1395
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1396
    const-string/jumbo v1, "media_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1397
    const-string/jumbo v2, "media_date"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1398
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1399
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/adobe/premiereclip/MainActivity;->updatePreferenceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1401
    :cond_0
    return-void
.end method

.method private refreshAnalyticsForSelectedTab(II)V
    .locals 1

    .prologue
    .line 1422
    packed-switch p2, :pswitch_data_0

    .line 1425
    if-eq p1, p2, :cond_0

    .line 1427
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didScrollOrganizerToMyProjects()V

    .line 1428
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowMyProjectsView()V

    .line 1429
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/MainActivity;->setPreviousTabID(I)V

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1433
    :pswitch_0
    if-eq p1, p2, :cond_0

    .line 1435
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didScrollOrganizerToCommunityVideos()V

    .line 1436
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowCommunityVideosView()V

    .line 1437
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/MainActivity;->setPreviousTabID(I)V

    goto :goto_0

    .line 1441
    :pswitch_1
    if-eq p1, p2, :cond_0

    .line 1443
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didScrollOrganizerToMyPublishedVideos()V

    .line 1444
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowMyPublishedVideosView()V

    .line 1445
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/MainActivity;->setPreviousTabID(I)V

    goto :goto_0

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerNetworkChangeNotification()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->network_reachability_observer:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$7;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->network_reachability_observer:Ljava/util/Observer;

    .line 617
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 619
    return-void
.end method

.method private selectItem(I)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const v7, 0x7f12051d

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 781
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->setActiveRowIndex(I)V

    .line 782
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->notifyDataSetChanged()V

    .line 784
    iput-object v5, p0, Lcom/adobe/premiereclip/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 785
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FragmentTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    .line 788
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v5, v8}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 795
    const-string/jumbo v0, "DrawerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clicked on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 797
    packed-switch p1, :pswitch_data_0

    .line 850
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 853
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_1
    invoke-virtual {p0, v7}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FragmentTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FragmentTag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 864
    :cond_1
    if-eq p1, v9, :cond_2

    .line 865
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/MainActivity;->updateToolbar(I)V

    .line 866
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->invalidateOptionsMenu()V

    .line 867
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->notifyDataSetChanged()V

    .line 869
    :cond_2
    :goto_2
    return-void

    .line 790
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 799
    :pswitch_1
    const v0, 0x7f0a04e5

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 800
    const-class v0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 801
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideSyncButton()V

    goto/16 :goto_0

    .line 805
    :pswitch_2
    iput-object v5, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 806
    invoke-virtual {p0, v7}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 808
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->initDCXSyncStatusButton()V

    .line 809
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->updateSyncMessageProjectsListFragment()V

    goto/16 :goto_0

    .line 813
    :pswitch_3
    const-class v0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 814
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideSyncButton()V

    goto/16 :goto_0

    .line 818
    :pswitch_4
    const-class v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 819
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideSyncButton()V

    goto/16 :goto_0

    .line 823
    :pswitch_5
    iput-object v5, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 824
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SENDTO"

    const-string/jumbo v3, "mailto"

    const-string/jumbo v4, "clipandroidfeedback@adobe.com"

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 826
    const v2, 0x7f0a040a

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/premiereclip/util/Utilities;->getAppVersionCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 827
    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-static {p0}, Lcom/adobe/premiereclip/util/Utilities;->constructDeviceDetails(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 831
    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const v2, 0x7f0a046f

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 837
    :pswitch_6
    const-class v0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 838
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideSyncButton()V

    goto/16 :goto_0

    .line 842
    :pswitch_7
    const-class v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentClass:Ljava/lang/Class;

    .line 843
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideSyncButton()V

    goto/16 :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private selectProjectType(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1404
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/NewProjectData;->setMediaRequestType(I)V

    .line 1405
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/NewProjectData;->setMediaRequestResult(Landroid/content/Intent;)V

    .line 1406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1407
    const/16 v1, 0x4e2a

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1408
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1409
    return-void
.end method

.method private setCoachmarkListener()V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$16;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->setListener(Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;)V

    .line 1844
    return-void
.end method

.method private setMediaSelectorCallbacks()V
    .locals 2

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$15;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->setListener(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;)V

    .line 1826
    return-void
.end method

.method private setPageChangeListenerForViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$8;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 654
    return-void
.end method

.method private setPreviousTabID(I)V
    .locals 0

    .prologue
    .line 1412
    iput p1, p0, Lcom/adobe/premiereclip/MainActivity;->previousTabID:I

    .line 1413
    return-void
.end method

.method private setupViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 627
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 629
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;-><init>(Lcom/adobe/premiereclip/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;

    .line 630
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 631
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/MainActivity;->setPageChangeListenerForViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 632
    return-void
.end method

.method private showCoachmarks()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1847
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    .line 1848
    const-string/jumbo v1, "ORGANIZER_PLUS_BUTTON"

    invoke-virtual {v0, v1, v9}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1850
    const v0, 0x7f1202c5

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1851
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03d1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03d0

    .line 1852
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ORGANIZER_PLUS_BUTTON"

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1855
    const-wide/16 v2, 0x3e8

    iput-wide v2, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    .line 1856
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    const-string/jumbo v1, "ORGANIZER_BROWSE"

    invoke-virtual {v0, v1, v9}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03cf

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03ce

    .line 1860
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ORGANIZER_BROWSE"

    iget-object v4, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    move v5, v9

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1863
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    goto :goto_0
.end method

.method private showEnableStorageAndContactsPermissionDialog()V
    .locals 4

    .prologue
    .line 1315
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 1316
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1317
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0438

    .line 1318
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03fe

    .line 1319
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1321
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 1323
    :cond_1
    return-void
.end method

.method private showErrorDialogForLRImport()V
    .locals 4

    .prologue
    .line 2097
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a052b

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03e2

    .line 2098
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2099
    new-instance v1, Lcom/adobe/premiereclip/MainActivity$23;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/MainActivity$23;-><init>(Lcom/adobe/premiereclip/MainActivity;Lcom/adobe/premiereclip/dialogs/MessageDialog;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->setAcceptButtonListener(Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 2105
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2106
    return-void
.end method

.method private showSyncDialog()V
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lcom/adobe/premiereclip/dialogs/SyncDialog;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->show()V

    .line 465
    return-void
.end method

.method private startPreferenceAssetDownload(IILandroid/content/Intent;Z)V
    .locals 6

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->getPreferenceProjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/adobe/premiereclip/MainActivity;->getCCPreferenceAssetDownloadCallback(Z)Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->startDownload(Ljava/lang/String;IILandroid/content/Intent;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V

    .line 1387
    return-void
.end method

.method private storeAuth()V
    .locals 4

    .prologue
    .line 536
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "in storeAuth: Main"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v0

    .line 539
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in storeAuth: Main: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    if-eqz v0, :cond_0

    .line 541
    const-string/jumbo v1, "Preferences"

    const-string/jumbo v2, "in store auth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_KEY"

    const-string/jumbo v3, "oauth2:"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_SECRET"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method private switchToTourView()V
    .locals 2

    .prologue
    .line 2109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2110
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2111
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2112
    return-void
.end method

.method private unRegisterNetworkChangeNotification()V
    .locals 3

    .prologue
    .line 622
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 624
    return-void
.end method

.method private updatePreferenceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1735
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1736
    if-eqz p4, :cond_0

    .line 1737
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBumperPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1738
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity;->bumperAssetPath:Ljava/lang/String;

    .line 1744
    :goto_0
    return-void

    .line 1741
    :cond_0
    invoke-static {p1, p2, p3, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setOverlayPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity;->bugAssetPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private updatePreferenceFragmentsView()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f12051d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 771
    instance-of v1, v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    if-eqz v1, :cond_1

    .line 772
    check-cast v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->onRestoreFragment()V

    .line 773
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->updateToolbar(I)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    instance-of v1, v0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    if-eqz v1, :cond_0

    .line 775
    check-cast v0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onRestoreFragment()V

    goto :goto_0
.end method

.method private updateSyncMessageProjectsListFragment()V
    .locals 2

    .prologue
    .line 1996
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "android:switcher:2131887384:0"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1998
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/adobe/premiereclip/ProjectsListFragment;

    if-eqz v1, :cond_0

    .line 1999
    check-cast v0, Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->handleProjectViewMessageText()V

    .line 2001
    :cond_0
    return-void
.end method

.method private updateToolbar(I)V
    .locals 5

    .prologue
    const v4, 0x7f120514

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 883
    const v0, 0x7f12013a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 884
    packed-switch p1, :pswitch_data_0

    .line 930
    :goto_0
    :pswitch_0
    return-void

    .line 886
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->subview_fragmentView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 891
    const v1, 0x7f0a04f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 892
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 896
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 898
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 899
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 900
    const v1, 0x7f0a04ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 902
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 906
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideMainViewWidgets()V

    .line 907
    const v1, 0x7f0a04eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 911
    :pswitch_4
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideMainViewWidgets()V

    .line 912
    const v1, 0x7f0a04f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 916
    :pswitch_5
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->subview_fragmentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 920
    :pswitch_6
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideMainViewWidgets()V

    .line 921
    const v1, 0x7f0a04f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 925
    :pswitch_7
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->hideMainViewWidgets()V

    .line 926
    const v1, 0x7f0a04f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addMediaFromCC(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1036
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudFileAssetInMediaPicker()V

    .line 1037
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 1038
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V

    .line 1039
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1040
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1042
    :cond_0
    return-void
.end method

.method public addMediaFromCamera(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1024
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerUseCamera()V

    .line 1025
    const/16 v0, 0xb

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271b

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 1029
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1030
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1033
    :cond_0
    return-void
.end method

.method public addMediaFromDevice(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 960
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerOnMyDevice()V

    .line 961
    const/16 v0, 0xe

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 963
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "moments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 965
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 966
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 967
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 970
    :cond_0
    return-void
.end method

.method public addMediaFromDropbox(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1001
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Dropbox"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 1002
    const/16 v0, 0x49

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1007
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1008
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1009
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1012
    :cond_0
    return-void
.end method

.method public addMediaFromGoogleDrive(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 987
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GoogleDrive"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 988
    const/16 v0, 0x48

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 991
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 993
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 994
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 995
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 998
    :cond_0
    return-void
.end method

.method public addMediaFromGooglePhotos(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 973
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 974
    const/16 v0, 0x47

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 977
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 979
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 980
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 981
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 984
    :cond_0
    return-void
.end method

.method public addMediaFromLightRoom(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1015
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker()V

    .line 1016
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 1017
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1016
    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V

    .line 1018
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1019
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1021
    :cond_0
    return-void
.end method

.method public changeCloud()V
    .locals 5

    .prologue
    .line 1622
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->changeCloud()V

    .line 1623
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getAdobeId()Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    .line 1625
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    .line 1626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasLoggedInOnce_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasLoggedInOnce_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 1630
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSync()V

    .line 1631
    return-void
.end method

.method public closeMediaOptions(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeView()V

    .line 1830
    return-void
.end method

.method public closeMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 955
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 957
    :cond_0
    return-void
.end method

.method public defaultBumper()V
    .locals 5

    .prologue
    .line 1598
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1599
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->defaultBumperPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->bumperAssetPath:Ljava/lang/String;

    .line 1600
    const v1, 0x7f09002a

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->bumperAssetPath:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/adobe/premiereclip/util/FileOps;->copyRawFileToStorage(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1601
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->bumperAssetPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLastModifiedDateFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1602
    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->bumperAssetPath:Ljava/lang/String;

    const-string/jumbo v3, "Default"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBumperPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1603
    return-void
.end method

.method public didTapSettingsLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1617
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapSettingsLink(Ljava/lang/String;)V

    .line 1618
    return-void
.end method

.method public generateBumperPreview(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1710
    invoke-static {}, Lcom/adobe/premiereclip/util/CustomFrameHelper;->getInstance()Lcom/adobe/premiereclip/util/CustomFrameHelper;

    move-result-object v0

    .line 1711
    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/util/CustomFrameHelper;->setParams(Ljava/lang/String;II)V

    .line 1712
    new-instance v1, Lcom/adobe/premiereclip/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$13;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/util/CustomFrameHelper;->setOnCompletionListener(Lcom/adobe/premiereclip/util/CustomFrameHelper$OnCompletionListener;)V

    .line 1718
    sget-object v1, Lcom/adobe/premiereclip/util/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/util/CustomFrameHelper;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1719
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBugName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1675
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceOverlayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBugPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1668
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1669
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bugAssetPath:Ljava/lang/String;

    .line 1670
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bugAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBugState()Z
    .locals 1

    .prologue
    .line 1654
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1655
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceOverlayState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBumperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1593
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceBumperName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBumperPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1588
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBumperState()Z
    .locals 1

    .prologue
    .line 1568
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1569
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceBumperState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getExportResolution()I
    .locals 1

    .prologue
    .line 1551
    invoke-static {p0}, Lcom/adobe/premiereclip/util/Utilities;->is1080pExportSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    const/4 v0, -0x1

    .line 1557
    :goto_0
    return v0

    .line 1554
    :cond_0
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->isDefaultExportResolutionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1555
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getExportResolution()I

    move-result v0

    goto :goto_0

    .line 1557
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleLogout()V
    .locals 1

    .prologue
    .line 1541
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptSignOutWithAdobeID()V

    .line 1542
    return-void
.end method

.method public isBumperPremiereClip()Z
    .locals 1

    .prologue
    .line 1574
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1575
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->isPreferenceBumperPremiereClip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public linkDropbox()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->loginToDropbox()V

    .line 499
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1327
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1329
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1331
    sparse-switch p1, :sswitch_data_0

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1333
    :sswitch_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;

    invoke-direct {v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;-><init>(Landroid/content/Intent;)V

    .line 1334
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->getSelectionAssetArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 1335
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/util/Utilities;->canDownloadAssets(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1336
    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1339
    :cond_1
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/util/Utilities;->areAllAssetsLargerThanMaxFileSize(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1340
    const v0, 0x7f0a0398

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1345
    :cond_2
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/adobe/premiereclip/MainActivity;->selectProjectType(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1348
    :sswitch_2
    const-string/jumbo v0, "ProjectType"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    .line 1349
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/NewProjectData;->setProjectMode(I)V

    .line 1350
    iget v0, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    if-ne v0, v3, :cond_3

    .line 1351
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCreateNewAutomaticProject()V

    .line 1356
    :goto_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->createNewProject()V

    goto :goto_0

    .line 1353
    :cond_3
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCreateNewFreeformProject()V

    goto :goto_1

    .line 1360
    :sswitch_3
    invoke-direct {p0, p3, v1}, Lcom/adobe/premiereclip/MainActivity;->prepareAndUpdatePreferenceData(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1363
    :sswitch_4
    invoke-direct {p0, p3, v3}, Lcom/adobe/premiereclip/MainActivity;->prepareAndUpdatePreferenceData(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1366
    :sswitch_5
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/adobe/premiereclip/MainActivity;->startPreferenceAssetDownload(IILandroid/content/Intent;Z)V

    goto :goto_0

    .line 1369
    :sswitch_6
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/adobe/premiereclip/MainActivity;->startPreferenceAssetDownload(IILandroid/content/Intent;Z)V

    .line 1371
    :sswitch_7
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    if-eqz v0, :cond_0

    .line 1374
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "googleAccount"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v1, "FragmentTag3"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    .line 1376
    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mGoogleSignInTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0493

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    const-string/jumbo v0, "google"

    invoke-virtual {p0, v3, v0}, Lcom/adobe/premiereclip/MainActivity;->showLinkUnlinkDialog(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1331
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7
        0x4d1 -> :sswitch_5
        0x2236 -> :sswitch_6
        0x2329 -> :sswitch_0
        0x2716 -> :sswitch_1
        0x271b -> :sswitch_1
        0x271d -> :sswitch_4
        0x271e -> :sswitch_3
        0x4e2a -> :sswitch_2
    .end sparse-switch
.end method

.method public final onBackPressed()V
    .locals 3

    .prologue
    const v2, 0x800003

    const/4 v1, 0x1

    .line 741
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->onInterruptCoachmarks()V

    .line 742
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 767
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeView()V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeView()V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 750
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 753
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 754
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->updatePreferenceFragmentsView()V

    goto :goto_0

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 756
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 757
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->updateToolbar(I)V

    .line 758
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->invalidateOptionsMenu()V

    .line 759
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->setActiveRowIndex(I)V

    .line 760
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->notifyDataSetChanged()V

    .line 761
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->initDCXSyncStatusButton()V

    .line 762
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->updateSyncMessageProjectsListFragment()V

    goto :goto_0

    .line 764
    :cond_5
    invoke-super {p0}, Lcom/adobe/premiereclip/base/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/MainActivity;->selectItem(I)V

    .line 944
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v4, 0x7f020247

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 227
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-static {}, Lcom/adobe/premiereclip/util/Utilities;->getAdobeIdWrapped()Ljava/lang/String;

    move-result-object v7

    .line 229
    if-nez v7, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->switchToTourView()V

    .line 231
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->finish()V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->setContentView(I)V

    .line 236
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 237
    const v0, 0x7f120516

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->subview_fragmentView:Landroid/widget/TextView;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->pageTitles:Ljava/util/ArrayList;

    .line 240
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->pageTitles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->pageTitles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a044d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->pageTitles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a044f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->previousTabID:I

    .line 245
    const v0, 0x7f12013d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 246
    const v0, 0x7f12013e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    .line 247
    const v0, 0x7f120518

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 249
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerOptions:[Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 253
    new-instance v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerOptions:[Ljava/lang/String;

    invoke-direct {v0, v1, p0, p0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;-><init>([Ljava/lang/String;Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    .line 254
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 256
    const v0, 0x7f120515

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 257
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 258
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 260
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$1;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v0, 0x7f12013a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    const v1, 0x7f0a04ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$2;

    iget-object v3, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f0a03f9

    const v6, 0x7f0a03f8

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/MainActivity$2;-><init>(Lcom/adobe/premiereclip/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 299
    if-nez p1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 303
    :cond_2
    const v0, 0x7f12051a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 304
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$3;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/h;)V

    .line 320
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->setupViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 322
    const v0, 0x7f120517

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 323
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/MainActivity$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 324
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v9}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$4;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 347
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 349
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/MainActivity;->projectType:I

    .line 350
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-direct {v0, p0, v8}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    .line 351
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->setCoachmarkListener()V

    .line 352
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 354
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    .line 355
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->setMediaSelectorCallbacks()V

    .line 356
    new-instance v0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    .line 357
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->getPreferenceProjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    .line 358
    new-instance v0, Lcom/adobe/premiereclip/BottomSheetView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/BottomSheetView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    .line 360
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    iget-object v0, v0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/MainActivity$5;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    :cond_3
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 375
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSync()V

    .line 378
    :cond_4
    const v0, 0x7f12051c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->syncCloudButton:Landroid/widget/ImageView;

    .line 379
    const v0, 0x7f12051b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->placeHolderButton:Landroid/widget/ImageButton;

    .line 381
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 386
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_5

    .line 389
    const-string/jumbo v2, "LightRoomProject"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 390
    invoke-static {p0}, Lcom/adobe/premiereclip/util/Utilities;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 392
    iput-boolean v9, p0, Lcom/adobe/premiereclip/MainActivity;->cancelLRProject:Z

    .line 393
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    const-string/jumbo v3, "lightroomURL"

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didOpenClipProjectsCreateURL(Ljava/lang/String;)V

    .line 394
    new-instance v2, Lcom/adobe/premiereclip/CreatingLRProjectDialog;

    new-instance v3, Lcom/adobe/premiereclip/MainActivity$6;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/MainActivity$6;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/adobe/premiereclip/CreatingLRProjectDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->creatingLRProjectMessageDialog:Landroid/app/Dialog;

    .line 415
    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity;->creatingLRProjectMessageDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 416
    const-string/jumbo v2, "albumId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "projectName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/premiereclip/MainActivity;->getCCAssetsList(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 430
    :goto_2
    const-string/jumbo v0, "ab_testing"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestNotification;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/analytics/ABTestNotification;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {v0}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->setABTestSuccess()V

    .line 433
    const-string/jumbo v0, "ClipService"

    const-string/jumbo v1, "ab test success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_5
    invoke-static {p0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->initNotification(Z)V

    .line 439
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    .line 441
    const-string/jumbo v1, "usersSyncDialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getListOfUsers(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_a

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 445
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showSyncDialog()V

    .line 447
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 449
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 450
    const-string/jumbo v2, "usersSyncDialog"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setListOfUsers(Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 419
    :cond_7
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showErrorDialogForLRImport()V

    goto :goto_2

    .line 421
    :cond_8
    const-string/jumbo v2, "LightroomClipIdNotSame"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 422
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v2, 0x7f0a0427

    .line 423
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0428

    .line 424
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v8}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 426
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_2

    .line 428
    :cond_9
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->handleMediaFromExternalApp(Landroid/content/Intent;)V

    goto :goto_2

    .line 453
    :cond_a
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showSyncDialog()V

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 457
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 458
    const-string/jumbo v1, "usersSyncDialog"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->setListOfUsers(Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method public onInterruptCoachmarks()V
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 1504
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 879
    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 729
    invoke-super {p0}, Lcom/adobe/premiereclip/base/BaseActivity;->onPause()V

    .line 730
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 731
    return-void
.end method

.method public onRequestMedia()V
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mediaSelectorView:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->openView()V

    .line 1732
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const v6, 0x7f05002b

    const/16 v5, 0x2716

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1153
    sparse-switch p1, :sswitch_data_0

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1156
    :sswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 1157
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271b

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 1159
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1160
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto :goto_0

    .line 1167
    :cond_1
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a038f

    .line 1169
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0390

    .line 1170
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1172
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 1181
    :sswitch_1
    array-length v0, p3

    if-lez v0, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 1182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1183
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "moments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1185
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1186
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1187
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto :goto_0

    .line 1193
    :cond_2
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0408

    .line 1195
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0409

    .line 1196
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 1207
    :sswitch_2
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 1208
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->selectItem(I)V

    goto/16 :goto_0

    .line 1214
    :sswitch_3
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 1215
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->selectItem(I)V

    goto/16 :goto_0

    .line 1222
    :sswitch_4
    array-length v0, p3

    .line 1223
    if-ne v0, v3, :cond_3

    aget v1, p3, v2

    if-eqz v1, :cond_4

    :cond_3
    if-ne v0, v4, :cond_5

    aget v0, p3, v2

    if-nez v0, :cond_5

    aget v0, p3, v3

    if-nez v0, :cond_5

    .line 1227
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1228
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1230
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1231
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1232
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 1236
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showEnableStorageAndContactsPermissionDialog()V

    goto/16 :goto_0

    .line 1243
    :sswitch_5
    array-length v0, p3

    .line 1244
    if-ne v0, v3, :cond_6

    aget v1, p3, v2

    if-eqz v1, :cond_7

    :cond_6
    if-ne v0, v4, :cond_8

    aget v0, p3, v2

    if-nez v0, :cond_8

    aget v0, p3, v3

    if-nez v0, :cond_8

    .line 1248
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1251
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1252
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1253
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 1257
    :cond_8
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showEnableStorageAndContactsPermissionDialog()V

    goto/16 :goto_0

    .line 1264
    :sswitch_6
    array-length v0, p3

    .line 1265
    if-ne v0, v3, :cond_9

    aget v1, p3, v2

    if-eqz v1, :cond_a

    :cond_9
    if-ne v0, v4, :cond_b

    aget v0, p3, v2

    if-nez v0, :cond_b

    aget v0, p3, v3

    if-nez v0, :cond_b

    .line 1268
    :cond_a
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->addBrandingMediaFromGoogleDrive()V

    goto/16 :goto_0

    .line 1270
    :cond_b
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showEnableStorageAndContactsPermissionDialog()V

    goto/16 :goto_0

    .line 1277
    :sswitch_7
    array-length v0, p3

    .line 1278
    if-ne v0, v3, :cond_c

    aget v1, p3, v2

    if-eqz v1, :cond_d

    :cond_c
    if-ne v0, v4, :cond_e

    aget v0, p3, v2

    if-nez v0, :cond_e

    aget v0, p3, v3

    if-nez v0, :cond_e

    .line 1282
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1283
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1285
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/MainActivity;->overridePendingTransition(II)V

    .line 1286
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1287
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 1291
    :cond_e
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showEnableStorageAndContactsPermissionDialog()V

    goto/16 :goto_0

    .line 1298
    :sswitch_8
    array-length v0, p3

    .line 1299
    if-ne v0, v3, :cond_f

    aget v1, p3, v2

    if-eqz v1, :cond_10

    :cond_f
    if-ne v0, v4, :cond_11

    aget v0, p3, v2

    if-nez v0, :cond_11

    aget v0, p3, v3

    if-nez v0, :cond_11

    .line 1302
    :cond_10
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->addBrandingMediaFromDropbox()V

    goto/16 :goto_0

    .line 1305
    :cond_11
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showEnableStorageAndContactsPermissionDialog()V

    goto/16 :goto_0

    .line 1153
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x47 -> :sswitch_4
        0x48 -> :sswitch_5
        0x49 -> :sswitch_7
        0x4a -> :sswitch_6
        0x4b -> :sswitch_8
    .end sparse-switch
.end method

.method public onResetCommunityFeedTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->pageTitles:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1454
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/MainActivity$10;-><init>(Lcom/adobe/premiereclip/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1464
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 664
    invoke-super {p0}, Lcom/adobe/premiereclip/base/BaseActivity;->onRestart()V

    .line 666
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 668
    invoke-static {p0}, Lcom/adobe/premiereclip/util/Navigator;->goToSplashActivity(Landroid/app/Activity;)V

    .line 670
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 682
    const-string/jumbo v0, "ActivityLifeCycle"

    const-string/jumbo v1, "onStart of MainActivity called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-super {p0}, Lcom/adobe/premiereclip/base/BaseActivity;->onResume()V

    .line 685
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getAdobeId()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 691
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isProjectSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSync()V

    .line 697
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->updatePreferenceFragmentsView()V

    .line 699
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->mDrawerAdapter:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->notifyDataSetChanged()V

    .line 700
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$9;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    .line 710
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 711
    const-string/jumbo v0, "Preferences"

    const-string/jumbo v1, "after successful authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->storeAuth()V

    .line 714
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v1, "FragmentTag3"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v1, "FragmentTag3"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    .line 716
    iget-object v1, v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a0485

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 717
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 718
    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0493

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    const/4 v0, 0x1

    const-string/jumbo v1, "dropbox"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->showLinkUnlinkDialog(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_2
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error authenticating"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 674
    const-string/jumbo v0, "ActivityLifeCycle"

    const-string/jumbo v1, "onStart of MainActivity called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-super {p0}, Lcom/adobe/premiereclip/base/BaseActivity;->onStart()V

    .line 676
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->registerNetworkChangeNotification()V

    .line 677
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->initDCXSyncStatusButton()V

    .line 678
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 735
    invoke-super {p0}, Lcom/adobe/premiereclip/base/BaseActivity;->onStop()V

    .line 736
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->unRegisterNetworkChangeNotification()V

    .line 737
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1495
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 1497
    if-eqz p1, :cond_0

    .line 1498
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showCoachmarks()V

    .line 1500
    :cond_0
    return-void
.end method

.method public openBugPreferenceFragment()V
    .locals 2

    .prologue
    .line 1696
    const/16 v0, 0xf

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->selectItem(I)V

    .line 1699
    :cond_0
    return-void
.end method

.method public openBumperPreferenceFragment()V
    .locals 2

    .prologue
    .line 1703
    const/16 v0, 0x10

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->selectItem(I)V

    .line 1706
    :cond_0
    return-void
.end method

.method public pickUserAccount()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pickuseraccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "com.google"

    aput-object v4, v2, v1

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 491
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 493
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 494
    return-void
.end method

.method public resetBrandingPreferences()V
    .locals 4

    .prologue
    .line 1680
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    const v1, 0x7f0a046a

    .line 1681
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0469

    .line 1682
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1683
    const v1, 0x7f0a03ee

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/MainActivity$12;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 1690
    const v1, 0x7f0a03ed

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 1691
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 1692
    return-void
.end method

.method public sendUsageReport(Z)V
    .locals 0

    .prologue
    .line 1547
    return-void
.end method

.method public setBugState(Z)V
    .locals 2

    .prologue
    .line 1660
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1661
    const-string/jumbo v1, "/branding/overlay"

    invoke-static {v1, p1, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceBrandingState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1662
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleAddWatermarkSetting(Ljava/lang/Boolean;)V

    .line 1663
    return-void
.end method

.method public setBumperState(Z)V
    .locals 2

    .prologue
    .line 1580
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1581
    const-string/jumbo v1, "/branding/bumper"

    invoke-static {v1, p1, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceBrandingState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1582
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleAddBumperSetting(Ljava/lang/Boolean;)V

    .line 1583
    return-void
.end method

.method public setCoachMarkEnabled(Z)V
    .locals 1

    .prologue
    .line 1607
    if-nez p1, :cond_0

    .line 1608
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->resetCoachmarks()V

    .line 1609
    invoke-direct {p0}, Lcom/adobe/premiereclip/MainActivity;->showCoachmarks()V

    .line 1610
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapResetTooltips()V

    .line 1613
    :cond_0
    return-void
.end method

.method public setExportResolution(I)V
    .locals 2

    .prologue
    .line 1562
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/ClipPreferences;->setExportResolution(I)V

    .line 1563
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setDefaultExportResolution(Z)V

    .line 1564
    return-void

    .line 1563
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSyncEnabledOnlyOnWifi(Z)V
    .locals 2

    .prologue
    .line 1535
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setSyncEnabled(Z)V

    .line 1536
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleWifiOnly(Z)V

    .line 1537
    return-void

    .line 1536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLinkUnlinkDialog(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1511
    if-eqz p1, :cond_1

    .line 1513
    const-string/jumbo v0, "google"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    const v0, 0x7f0a04e2

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1518
    :goto_0
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v2, 0x7f0a041f

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 1529
    :goto_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 1530
    return-void

    .line 1516
    :cond_0
    const v0, 0x7f0a04e1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1522
    :cond_1
    const-string/jumbo v0, "google"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1523
    const v0, 0x7f0a04e4

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1527
    :goto_2
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v2, 0x7f0a050c

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_1

    .line 1525
    :cond_2
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public showLogoutDialog()V
    .locals 4

    .prologue
    .line 1635
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    const v1, 0x7f0a04cb

    .line 1636
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a04cc

    .line 1637
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1639
    const v1, 0x7f0a04ca

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/MainActivity$11;-><init>(Lcom/adobe/premiereclip/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 1648
    const v1, 0x7f0a03e8

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 1649
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 1650
    return-void
.end method

.method public unlinkDropbox()V
    .locals 2

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setClient(Lcom/dropbox/core/v2/DbxClientV2;)V

    .line 504
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlinking account, removing oauth token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_KEY"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 506
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_SECRET"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 507
    return-void
.end method

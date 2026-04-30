package com.adobe.premiereclip;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.premiereclip.adapter.PopupListAdapter;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXProjectManager;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.editor.EditorActivity;
import com.adobe.premiereclip.editor.automatic.AutomaticActivity;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.util.LollipopUtils;
import com.adobe.premiereclip.util.ProjectPosterView;
import com.adobe.premiereclip.util.Utilities;
import com.h.a.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectsListFragment extends Fragment implements DCXModelController.ISyncControllerEventReceiver {
    private ProjectsListAdapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    private RecyclerView mRecyclerView;
    private SwipeRefreshLayout mSwipeRefreshLayout;
    private ArrayList<Integer> popupOptionsDrawableIdList;
    private int projectPosterHeight;
    private int projectPosterWidth;
    private TextView projectViewMessage;

    public static ProjectsListFragment newInstance() {
        ProjectsListFragment projectsListFragment = new ProjectsListFragment();
        projectsListFragment.setArguments(new Bundle());
        return projectsListFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    private void setProjectUpdateListener(DCXModelController.ISyncControllerEventReceiver iSyncControllerEventReceiver) {
        DCXModelController.getInstance().setProjectsUpdateListiner(iSyncControllerEventReceiver);
    }

    public void refreshContent() {
        if (DCXModelController.getInstance().isSyncInitialized()) {
            DCXModelController.getInstance().forceSync();
        }
        new Handler().postDelayed(new Runnable() { // from class: com.adobe.premiereclip.ProjectsListFragment.1
            @Override // java.lang.Runnable
            public void run() {
                ProjectsListFragment.this.mSwipeRefreshLayout.setRefreshing(false);
            }
        }, 1000L);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_projects_list, viewGroup, false);
        this.mSwipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.project_swipe_refresh_layout);
        this.mSwipeRefreshLayout.setColorSchemeResources(R.color.theme_color);
        this.mSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.2
            @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                ProjectsListFragment.this.refreshContent();
            }
        });
        this.mRecyclerView = (RecyclerView) viewInflate.findViewById(R.id.projects_list_view);
        this.mRecyclerView.setHasFixedSize(true);
        this.mLayoutManager = new LinearLayoutManager(getActivity());
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        if (!DCXModelController.getInstance().isInitialized()) {
            DCXModelController.getInstance().initalize(PremiereClipApplication.getContext(), AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
        }
        if (!DCXModelController.getInstance().isSyncInitialized()) {
            DCXModelController.getInstance().initializeSync();
        }
        this.mAdapter = new ProjectsListAdapter(DCXProjectManager.getInstance().getProjectListFromDCX());
        this.mRecyclerView.setAdapter(this.mAdapter);
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.projectPosterWidth = point.x - (getResources().getDimensionPixelSize(R.dimen.card_view_margin) * 2);
        this.projectPosterHeight = (this.projectPosterWidth * 9) / 16;
        this.projectViewMessage = (TextView) viewInflate.findViewById(R.id.project_view_message);
        d.a(this.projectViewMessage);
        if (ProjectManager.getInstance().getProjectsList().isEmpty()) {
            showNoProjectCreatedText();
        } else {
            removeProjectViewMessageText();
        }
        this.popupOptionsDrawableIdList = new ArrayList<>();
        this.popupOptionsDrawableIdList.add(Integer.valueOf(R.drawable.popup_duplicate_android));
        this.popupOptionsDrawableIdList.add(Integer.valueOf(R.drawable.popup_trash_android));
        return viewInflate;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.adobe.premiereclip.ProjectsListFragment$3] */
    @Override // android.support.v4.app.Fragment
    public void onStart() {
        Log.d("ActivityLifeCycle", "onStart of ProjectListFragment called");
        super.onStart();
        setProjectUpdateListener(this);
        Intent intent = getActivity().getIntent();
        if (intent == null || !intent.getBooleanExtra("logout", false)) {
            new Thread() { // from class: com.adobe.premiereclip.ProjectsListFragment.3
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    ProjectsListFragment.this.projectsUpdated();
                    Metrics.sharedInstance().didRefreshMyProjects();
                    ProjectsListFragment.this.handleProjectViewMessageText();
                }
            }.start();
            this.mAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        setProjectUpdateListener(null);
    }

    public class ProjectsListAdapter extends RecyclerView.Adapter<ViewHolder> {
        private ArrayList<Project> projects;

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            public String key;
            public View mCardView;
            public ImageButton mImageButton;
            public ImageView mImageView;
            public TextView mTextView;

            public ViewHolder(View view) {
                super(view);
                d.a(view);
                this.mCardView = view.findViewById(R.id.card_view);
                this.mTextView = (TextView) view.findViewById(R.id.project_name);
                this.mImageView = (ImageView) view.findViewById(R.id.project_thumb);
                this.mImageButton = (ImageButton) view.findViewById(R.id.openControlsPopup);
                this.mTextView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.ViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ProjectsListAdapter.this.openRenameDialog(ViewHolder.this.getAdapterPosition(), view2);
                    }
                });
                this.mImageView.setOnClickListener(this);
                this.mImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.ViewHolder.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        int adapterPosition = ViewHolder.this.getAdapterPosition();
                        if (adapterPosition >= 0 && adapterPosition < ProjectsListAdapter.this.projects.size()) {
                            ProjectsListAdapter.this.openProjectOptionsPopup(((Project) ProjectsListAdapter.this.projects.get(adapterPosition)).projectKey, view2);
                        }
                    }
                });
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent;
                ((MainActivity) ProjectsListFragment.this.getActivity()).onInterruptCoachmarks();
                if (!DCXUtils.canReadCompositeBasedOnVersion(this.key)) {
                    ProjectsListFragment.this.showUnableToOpenProjectDialog();
                    return;
                }
                LollipopUtils.setElevation(this.mCardView, ProjectsListFragment.this.getResources().getDimension(R.dimen.card_view_selected_elevation));
                Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(this.key);
                if (projectWithKey.getEditMode() == 1) {
                    intent = new Intent(ProjectsListFragment.this.getActivity(), (Class<?>) AutomaticActivity.class);
                } else {
                    intent = new Intent(ProjectsListFragment.this.getActivity(), (Class<?>) EditorActivity.class);
                }
                intent.putExtra("project_key", this.key);
                intent.putExtra("newProject", false);
                Metrics.sharedInstance().didTapPosterFrameForMyProject(this.key);
                Metrics.sharedInstance().setCurrentProjectInfoWithTitle(projectWithKey.getProjectName(), projectWithKey.projectKey, projectWithKey.getProjectName(), false, projectWithKey.getEditMode() != 1 ? 0 : 1, null, null);
                ProjectsListFragment.this.startActivity(intent);
            }
        }

        public ProjectsListAdapter(ArrayList<Project> arrayList) {
            updateData(arrayList);
        }

        public void updateData(ArrayList<Project> arrayList) {
            Collections.sort(arrayList, new Comparator<Project>() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.1
                @Override // java.util.Comparator
                public int compare(Project project, Project project2) {
                    return project2.getCreationDate().compareTo(project.getCreationDate());
                }
            });
            this.projects = arrayList;
        }

        public void updateList(ArrayList<Project> arrayList) {
            this.projects = arrayList;
            FragmentActivity activity = ProjectsListFragment.this.getActivity();
            if (activity != null) {
                activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ProjectsListAdapter.this.notifyDataSetChanged();
                    }
                });
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_project, viewGroup, false);
            viewInflate.findViewById(R.id.project_thumb).getLayoutParams().height = ProjectsListFragment.this.projectPosterHeight;
            return new ViewHolder(viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onViewRecycled(ViewHolder viewHolder) {
            super.onViewRecycled(viewHolder);
            viewHolder.mImageView.setImageDrawable(null);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            Project project = this.projects.get(i);
            viewHolder.mTextView.setText(project.getProjectName());
            ImageView imageView = viewHolder.mImageView;
            Utilities.resetViewIfBitmapRecycled(imageView);
            ProjectPosterView.load(project.projectKey, project.getPosterPath(), imageView, ProjectsListFragment.this.projectPosterWidth, ProjectsListFragment.this.projectPosterHeight, true, new ProjectPosterView.PosterViewListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.3
                @Override // com.adobe.premiereclip.util.ProjectPosterView.PosterViewListener
                public void onSuccessImageLoad(String str, Bitmap bitmap) {
                    ViewHolder viewHolder2;
                    if (ProjectsListFragment.this.mRecyclerView != null && (viewHolder2 = (ViewHolder) ProjectsListFragment.this.mRecyclerView.findViewHolderForLayoutPosition(ProjectsListAdapter.this.getProjectPosition(str))) != null) {
                        viewHolder2.mImageView.setImageBitmap(bitmap);
                    }
                }
            });
            viewHolder.mImageButton.setTag(viewHolder);
            viewHolder.mTextView.setTag(viewHolder);
            viewHolder.key = this.projects.get(i).projectKey;
            LollipopUtils.setElevation(viewHolder.mCardView, ProjectsListFragment.this.getResources().getDimension(R.dimen.card_view_elevation));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.projects.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void openRenameDialog(final int i, View view) {
            final Project project = this.projects.get(i);
            Metrics.sharedInstance().didTapTitleForMyProject(project.projectKey);
            AlertDialog.Builder builder = new AlertDialog.Builder(ProjectsListFragment.this.getActivity());
            View viewInflate = ProjectsListFragment.this.getActivity().getLayoutInflater().inflate(R.layout.view_rename_dialog, (ViewGroup) null);
            d.a(viewInflate);
            builder.setView(viewInflate);
            final AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.getWindow().setSoftInputMode(4);
            final EditText editText = (EditText) viewInflate.findViewById(R.id.rename_dialog_edittext);
            final String projectName = project.getProjectName();
            editText.setText(projectName);
            editText.setSelection(editText.getText().length());
            final Button button = (Button) viewInflate.findViewById(R.id.rename_dialog_ok);
            Button button2 = (Button) viewInflate.findViewById(R.id.rename_dialog_cancel);
            ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.rename_dialog_clearbutton);
            ViewGroup.LayoutParams layoutParams = imageButton.getLayoutParams();
            layoutParams.height = layoutParams.width;
            imageButton.setLayoutParams(layoutParams);
            editText.setOnKeyListener(new View.OnKeyListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.4
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view2, int i2, KeyEvent keyEvent) {
                    if (keyEvent.getAction() != 0 || i2 != 66) {
                        return false;
                    }
                    button.performClick();
                    return true;
                }
            });
            button.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    String strTrim = editText.getText().toString().trim();
                    if (!strTrim.equals("")) {
                        if (!projectName.equals(strTrim)) {
                            project.setProjectName(strTrim);
                            ProjectsListAdapter.this.notifyItemChanged(i);
                            DCXModelController.getInstance().updateProjectTitleWithKey(project.projectKey, strTrim);
                            Metrics.sharedInstance().didEditTitleForMyProject(project.projectKey);
                        }
                        alertDialogCreate.dismiss();
                    }
                }
            });
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    alertDialogCreate.cancel();
                }
            });
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    editText.setText("");
                }
            });
            alertDialogCreate.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void openProjectOptionsPopup(final String str, View view) {
            Context context = ProjectsListFragment.this.getContext();
            final ListPopupWindow listPopupWindow = new ListPopupWindow(context);
            listPopupWindow.setAnchorView(view);
            listPopupWindow.setAdapter(new PopupListAdapter(context, ProjectsListFragment.this.popupOptionsDrawableIdList));
            Utilities.preparePopupView(context, listPopupWindow);
            listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.8
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                    listPopupWindow.dismiss();
                    if (i == 0) {
                        ProjectsListAdapter.this.duplicateAction(str);
                    } else if (i == 1) {
                        ConfirmDialog confirmDialog = new ConfirmDialog(ProjectsListFragment.this.getActivity(), ProjectsListFragment.this.getStringWrapped(R.string.delete_title), ProjectsListFragment.this.getStringWrapped(R.string.delete_message), true);
                        confirmDialog.setAcceptButton(ProjectsListFragment.this.getStringWrapped(R.string.delete_positive), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.ProjectsListFragment.ProjectsListAdapter.8.1
                            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                            public void onClick() {
                                ProjectsListAdapter.this.deleteAction(str);
                            }
                        });
                        confirmDialog.setRejectButton(ProjectsListFragment.this.getStringWrapped(R.string.delete_negative), null);
                        confirmDialog.show();
                    }
                }
            });
            listPopupWindow.setVerticalOffset(-view.getHeight());
            listPopupWindow.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void deleteAction(String str) {
            Metrics.sharedInstance().didTapDeleteForMyProject(str);
            int projectPosition = getProjectPosition(str);
            if (projectPosition != -1) {
                this.projects.remove(projectPosition);
                ProjectManager.getInstance().deleteProjectWithKey(str);
                notifyItemRemoved(projectPosition);
                DCXModelController.getInstance().deleteProjectWithKey(str);
                Metrics.sharedInstance().didDeleteMyProject(str);
                Metrics.sharedInstance().didRefreshMyProjects();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void duplicateAction(String str) {
            if (getProjectPosition(str) != -1) {
                Metrics.sharedInstance().didTapDuplicateForMyProject(str);
                if (DCXModelController.getInstance().duplicateProjectWithKey(str) != -1) {
                    ProjectsListFragment.this.projectsUpdated();
                    Metrics.sharedInstance().didRefreshMyProjects();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getProjectPosition(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.projects.size()) {
                    if (!this.projects.get(i2).projectKey.equals(str)) {
                        i = i2 + 1;
                    } else {
                        return i2;
                    }
                } else {
                    return -1;
                }
            }
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerEventReceiver
    public void projectsUpdated() {
        ArrayList<Project> projectListFromDCX = DCXProjectManager.getInstance().getProjectListFromDCX();
        if (this.mAdapter != null) {
            this.mAdapter.updateList(projectListFromDCX);
            Metrics.sharedInstance().setMyProjectsCount(projectListFromDCX.size());
            Log.d("MainActivity", "projects updated");
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerEventReceiver
    public void showLowDiskSpaceAlert() {
        new MessageDialog(getActivity(), getResources().getString(R.string.low_disk_space), getResources().getString(R.string.low_disk_space_warning), true).show();
    }

    public void showProjectDownloadingText() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.ProjectsListFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    if (ProjectsListFragment.this.projectViewMessage != null) {
                        ProjectsListFragment.this.projectViewMessage.setText(ProjectsListFragment.this.getStringWrapped(R.string.project_sync_start));
                        ProjectsListFragment.this.projectViewMessage.setVisibility(0);
                    }
                }
            });
        }
    }

    public void showNoProjectCreatedText() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.ProjectsListFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    if (ProjectsListFragment.this.projectViewMessage != null) {
                        ProjectsListFragment.this.projectViewMessage.setText(ProjectsListFragment.this.getStringWrapped(R.string.no_project_created));
                        ProjectsListFragment.this.projectViewMessage.setVisibility(0);
                    }
                }
            });
        }
    }

    public void removeProjectViewMessageText() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.ProjectsListFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    if (ProjectsListFragment.this.projectViewMessage != null) {
                        ProjectsListFragment.this.projectViewMessage.setVisibility(8);
                    }
                }
            });
        }
    }

    public void handleProjectViewMessageText() {
        ArrayList<Project> projectsList = ProjectManager.getInstance().getProjectsList();
        boolean z = projectsList.size() == 1 && projectsList.get(0).projectKey.equals("preferences");
        if (DCXModelController.getInstance().isSyncInitialized() && DCXModelController.getInstance().pushesOrPullsExist(true)) {
            if (ProjectManager.getInstance().getProjectsList().isEmpty() || z) {
                Log.d("MainActivity", "ProjectsListFragment setting syncing text");
                showProjectDownloadingText();
                return;
            } else {
                removeProjectViewMessageText();
                return;
            }
        }
        if (projectsList.isEmpty() || z) {
            showNoProjectCreatedText();
        } else {
            removeProjectViewMessageText();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getStringWrapped(int i) {
        FragmentActivity activity = getActivity();
        return (activity == null || !isAdded()) ? "" : activity.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnableToOpenProjectDialog() {
        new MessageDialog(getActivity(), getResources().getString(R.string.open_project_error_title), getResources().getString(R.string.open_project_error_message), true).show();
    }
}

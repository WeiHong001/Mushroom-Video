package com.mogu.research;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.amogu6.tv.BuildConfig;

public final class ResearchConsoleActivity extends Activity {
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        ScrollView scroll=new ScrollView(this);
        LinearLayout body=new LinearLayout(this);body.setOrientation(LinearLayout.VERTICAL);body.setPadding(24,24,24,24);scroll.addView(body);
        TextView title=new TextView(this);title.setTextSize(20);title.setText("蘑菇视频 1.1.4 · 研究入口");title.setTextColor(Color.WHITE);body.addView(title);
        ((com.mogu.tv.main.App)getApplication()).getDiagnostics().addSettingsEntry(this, body);
        TextView info=new TextView(this);info.setTextColor(Color.LTGRAY);info.setText(BuildConfig.OFFLINE?"当前为离线合成数据。原页面、接口、解析和播放器继续运行；操作只写入本机。\n研究账号：13800000000 / study114；图形码与短信码：0000。\n原后台、上传和真实付费未恢复。":"当前为真实接口只读模式；写入与解锁请求在本机阻止。缺失后台不会被离线成功结果替代。");body.addView(info);
        if(BuildConfig.OFFLINE)button(body,"登录本机研究账号",()->{
            com.mogu.tv.main.UserManager.INSTANCE.refreshToken(RecoveryRuntime.repository().loginDemo());
            Toast.makeText(this,"已使用本机合成账号，请返回原页面",Toast.LENGTH_LONG).show();
        });
        button(body,"返回原业务首页",()->{Intent intent=new Intent();intent.setClassName(this,"com.mogu.tv.MainActivity");intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP|Intent.FLAG_ACTIVITY_SINGLE_TOP);startActivity(intent);finish();});
        TextView audit=new TextView(this);audit.setTextColor(Color.WHITE);audit.setTextIsSelectable(true);audit.setText(RecoveryRuntime.auditText());body.addView(audit);
        setContentView(scroll);
    }
    private void button(LinearLayout parent,String label,Runnable action){Button button=new Button(this);button.setText(label);button.setOnClickListener(v->action.run());parent.addView(button);}
}

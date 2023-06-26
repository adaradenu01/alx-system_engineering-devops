<h1 class="gap">0x0D Configuration management</h1>
<h4 class="info">Background Context</h4>


<p>When I was working for SlideShare, I worked on an auto-remediation tool called Skynet that monitored, scaled and fixed Cloud infrastructure. I was using a parallel job-execution system called MCollective that allowed me to execute commands to one or multiple servers at the same time. I could apply an action to a selected set of servers by applying a filter such as the server’s hostname or any other metadata we had (server type, server environment…). At some point, a bug was present in my code that sent nil to the filter method.

There were 2 pieces of bad news:

When MCollective receives nil as an argument for its filter method, it takes this to mean ‘all servers’
The action I sent was to terminate the selected servers
I started the parallel job-execution and after some time, I realized that it was taking longer than expected. Looking at logs I realized that I was shutting down SlideShare’s entire document conversion environment. Actually, 75% of all our conversion infrastructure servers had been shut down, resulting in users not able to convert their PDFs, powerpoints, and videos… Pretty bad!

Thanks to Puppet, we were able to restore our infrastructure to normal operation in under 1H, pretty impressive. Imagine if we had to do everything manually: launching the servers, configuring and linking them, importing application code, starting every process, and obviously, fixing all the bugs (you should know by now that complicated infrastructure always goes sideways)…

Obviously writing Puppet code for your infrastructure requires an investment of time and energy, but in the long term, it is for sure a must-have.</p>
<img src="https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/292/4i8il3B.gif">

<h4 class="task">
    0. Create a file
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Using Puppet, create a file in <code>/tmp</code>.</p><p>Requirements:</p><ul>
<li>File path is <code>/tmp/holberton</code></li>
<li>File permission is <code>0744</code></li>
<li>File owner is <code>www-data</code></li>
<li>File group is <code>www-data</code></li>
<li>File contains <code>I love Puppet</code></li>
</ul><p>Example:</p>


<h4 class="task">
    1. Install a package
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Using Puppet, install <code>puppet-lint</code>.</p><p>Requirements:</p><ul>
<li>Install <code>puppet-lint</code></li>
<li>Version must be <code>2.1.1</code></li>
</ul><p>Example:</p>


<h4 class="task">
    2. Execute a command
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Using Puppet, create a manifest that kills a process named <code>killmenow</code>.</p><p>Requirements:</p><ul>
<li>Must use the <code>exec</code> Puppet resource</li>
<li>Must use <code>pkill</code> </li>
</ul><p>Example:</p><p>Terminal #0 - starting my process</p>

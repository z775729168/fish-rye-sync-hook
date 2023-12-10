function rye_sync_hook --on-event fish_postexec
    if string match -q "*rye add *" $argv[1]; and test $status = 0
        rye sync
    else if string match -q "*rye remove *" $argv[1]; and test $status = 0
        rye sync
    end
end
